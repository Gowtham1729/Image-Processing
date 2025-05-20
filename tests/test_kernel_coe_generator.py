import unittest
import os
import tempfile
import subprocess
import sys
import cv2 # For creating sample image
import numpy as np
from typing import Dict, Tuple, Any

# Adjust sys.path to allow importing from the 'scripts' directory
# This assumes the tests are run from the root of the repository
SCRIPTS_DIR = os.path.join(os.path.dirname(__file__), '..', 'scripts')
sys.path.insert(0, os.path.abspath(SCRIPTS_DIR))

try:
    from kernel_coe_generator import create_kernel_coe_file, main_cli as kernel_main_cli, NEIGHBOR_IMAGE_NAMES
except ImportError as e:
    print(f"Error: kernel_coe_generator.py not found or sys.path incorrect: {e}")
    print(f"Current sys.path: {sys.path}")
    print(f"SCRIPTS_DIR resolved to: {os.path.abspath(SCRIPTS_DIR)}")
    create_kernel_coe_file = None # Placeholder
    kernel_main_cli = None # Placeholder
    NEIGHBOR_IMAGE_NAMES = [] # Placeholder

# Helper to convert int to 8-bit binary string (matching the one in the script)
def _int_to_8bit_binary_str_test_util(value: int) -> str:
    if not 0 <= value <= 255:
        raise ValueError(f"Value {value} is out of range (0-255).")
    return bin(value)[2:].zfill(8)

class TestCreateKernelCoeFileFunction(unittest.TestCase):
    """
    Tests for the create_kernel_coe_file function in kernel_coe_generator.py.
    """
    def _create_sample_images(self, base_dir: str, 
                              main_img_name: str = "main_color.bmp", 
                              neighbor_subdir: str = "neighbor_imgs",
                              img_dims: Tuple[int, int] = (1, 2), # height, width
                              main_is_color: bool = True) -> Tuple[str, str]:
        """
        Creates a main image and 9 neighbor images in a temporary structure.
        Returns (path_to_main_image, path_to_neighbor_directory).
        """
        main_image_path = os.path.join(base_dir, main_img_name)
        neighbor_images_dir_path = os.path.join(base_dir, neighbor_subdir)
        os.makedirs(neighbor_images_dir_path, exist_ok=True)

        rows, cols = img_dims

        # Create main color image (1x2 BGR: Blue, Green)
        if main_is_color:
            main_img_data = np.zeros((rows, cols, 3), dtype=np.uint8)
            if cols >= 1: main_img_data[0, 0] = [255, 0, 0]  # Blue (B=255,G=0,R=0)
            if cols >= 2: main_img_data[0, 1] = [0, 255, 0]  # Green (B=0,G=255,R=0)
        else: # Create grayscale main image if specified (for mismatch tests)
            main_img_data = np.zeros((rows, cols, 1), dtype=np.uint8)
            if cols >=1: main_img_data[0,0] = [100]
            if cols >=2: main_img_data[0,1] = [150]

        cv2.imwrite(main_image_path, main_img_data)

        # Create 9 grayscale neighbor images
        # For simplicity, making them uniform with distinct blue channel values for easy verification
        self.neighbor_blue_values: Dict[str, int] = {}
        for i, name in enumerate(NEIGHBOR_IMAGE_NAMES):
            neighbor_img_path = os.path.join(neighbor_images_dir_path, f"{name}.bmp")
            blue_val = (i + 1) * 10 
            self.neighbor_blue_values[name] = blue_val
            
            # Create grayscale image (OpenCV expects 3 channels for BMP unless explicitly 1 for some formats)
            # To ensure it's read as grayscale and blue channel is consistent:
            gray_img_data = np.full((rows, cols, 3), blue_val, dtype=np.uint8)
            cv2.imwrite(neighbor_img_path, gray_img_data)
            
        return main_image_path, neighbor_images_dir_path

    def setUp(self):
        """Set up a temporary directory and sample images for tests."""
        self.test_dir_obj = tempfile.TemporaryDirectory()
        self.test_dir = self.test_dir_obj.name
        self.main_image_path, self.neighbor_images_dir = self._create_sample_images(self.test_dir)
        self.output_coe_path = os.path.join(self.test_dir, "output_kernel.coe")

    def tearDown(self):
        """Clean up the temporary directory."""
        self.test_dir_obj.cleanup()

    @unittest.skipIf(create_kernel_coe_file is None, "kernel_coe_generator.py not imported")
    def test_successful_generation_and_content(self):
        """Test successful COE generation and verify its content."""
        create_kernel_coe_file(self.main_image_path, self.neighbor_images_dir, self.output_coe_path)
        self.assertTrue(os.path.exists(self.output_coe_path))

        with open(self.output_coe_path, 'r') as f:
            lines = [line.strip() for line in f.readlines()]
        
        self.assertEqual(lines[0], "memory_initialization_radix=2;")
        self.assertEqual(lines[1], "memory_initialization_vector=")

        # Expected neighbor bits string (72 bits)
        # Order from NEIGHBOR_IMAGE_NAMES in kernel_coe_generator.py
        expected_neighbor_bits = ""
        for name in NEIGHBOR_IMAGE_NAMES: # This list should be imported or redefined if not
            expected_neighbor_bits += _int_to_8bit_binary_str_test_util(self.neighbor_blue_values[name])
        
        # Expected main image pixel data
        # P1 (Blue: B=255, G=0, R=0) -> BGR binary: 111111110000000000000000
        main_px1_bits = _int_to_8bit_binary_str_test_util(255) + \
                        _int_to_8bit_binary_str_test_util(0) + \
                        _int_to_8bit_binary_str_test_util(0)
        expected_line1_data = expected_neighbor_bits + main_px1_bits

        # P2 (Green: B=0, G=255, R=0) -> BGR binary: 000000001111111100000000
        main_px2_bits = _int_to_8bit_binary_str_test_util(0) + \
                        _int_to_8bit_binary_str_test_util(255) + \
                        _int_to_8bit_binary_str_test_util(0)
        expected_line2_data = expected_neighbor_bits + main_px2_bits
        
        self.assertEqual(lines[2], f"{expected_line1_data},")
        self.assertEqual(lines[3], f"{expected_line2_data};")
        self.assertEqual(len(lines), 4, "COE file should have header, vector, and 2 data lines.")

    @unittest.skipIf(create_kernel_coe_file is None, "kernel_coe_generator.py not imported")
    def test_main_image_not_found(self):
        """Test FileNotFoundError for non-existent main image."""
        with self.assertRaises(FileNotFoundError):
            create_kernel_coe_file("non_existent.bmp", self.neighbor_images_dir, self.output_coe_path)

    @unittest.skipIf(create_kernel_coe_file is None, "kernel_coe_generator.py not imported")
    def test_neighbor_dir_not_found(self):
        """Test FileNotFoundError for non-existent neighbor images directory."""
        with self.assertRaises(FileNotFoundError): # Or could be generic Exception if it tries os.path.join first
            create_kernel_coe_file(self.main_image_path, "non_existent_dir/", self.output_coe_path)
    
    @unittest.skipIf(create_kernel_coe_file is None, "kernel_coe_generator.py not imported")
    def test_missing_one_neighbor_image(self):
        """Test FileNotFoundError if a neighbor image is missing."""
        os.remove(os.path.join(self.neighbor_images_dir, "up.bmp"))
        with self.assertRaises(FileNotFoundError):
            create_kernel_coe_file(self.main_image_path, self.neighbor_images_dir, self.output_coe_path)

    @unittest.skipIf(create_kernel_coe_file is None, "kernel_coe_generator.py not imported")
    def test_dimension_mismatch_main_img(self):
        """Test ValueError if main image dimensions differ from neighbors."""
        # Create a main image with different dimensions
        bad_main_img_path = os.path.join(self.test_dir, "bad_main_dims.bmp")
        bad_main_img_data = np.zeros((5, 5, 3), dtype=np.uint8) # Neighbors are 1x2
        cv2.imwrite(bad_main_img_path, bad_main_img_data)
        with self.assertRaises(ValueError): # As per current script's error handling
            create_kernel_coe_file(bad_main_img_path, self.neighbor_images_dir, self.output_coe_path)

    @unittest.skipIf(create_kernel_coe_file is None, "kernel_coe_generator.py not imported")
    def test_dimension_mismatch_neighbor_img(self):
        """Test ValueError if a neighbor image's dimensions differ."""
        # Overwrite one neighbor image with different dimensions
        bad_neighbor_path = os.path.join(self.neighbor_images_dir, "gray.bmp")
        bad_neighbor_data = np.zeros((3, 3, 3), dtype=np.uint8) # Main image is 1x2
        cv2.imwrite(bad_neighbor_path, bad_neighbor_data)
        with self.assertRaises(ValueError):
            create_kernel_coe_file(self.main_image_path, self.neighbor_images_dir, self.output_coe_path)


class TestKernelCliExecution(unittest.TestCase):
    """
    Tests for the command-line interface (main_cli) of kernel_coe_generator.py.
    """
    def _create_sample_images_for_cli(self, base_dir: str, 
                                      main_img_name: str = "main_cli.bmp", 
                                      neighbor_subdir: str = "neighbor_cli_imgs",
                                      img_dims: Tuple[int, int] = (1,1)) -> Tuple[str, str]:
        main_image_path = os.path.join(base_dir, main_img_name)
        neighbor_images_dir_path = os.path.join(base_dir, neighbor_subdir)
        os.makedirs(neighbor_images_dir_path, exist_ok=True)

        rows, cols = img_dims
        main_img_data = np.zeros((rows, cols, 3), dtype=np.uint8)
        if cols >= 1: main_img_data[0, 0] = [0,0,255]  # Red pixel (B=0,G=0,R=255)
        cv2.imwrite(main_image_path, main_img_data)

        for i, name in enumerate(NEIGHBOR_IMAGE_NAMES):
            neighbor_img_path = os.path.join(neighbor_images_dir_path, f"{name}.bmp")
            gray_img_data = np.full((rows, cols, 3), (i + 1) * 5, dtype=np.uint8) # Simple distinct gray values
            cv2.imwrite(neighbor_img_path, gray_img_data)
        return main_image_path, neighbor_images_dir_path

    def setUp(self):
        self.test_dir_obj = tempfile.TemporaryDirectory()
        self.test_dir = self.test_dir_obj.name
        self.main_image_path, self.neighbor_images_dir = self._create_sample_images_for_cli(self.test_dir)
        self.output_coe_path = os.path.join(self.test_dir, "cli_kernel_output.coe")
        self.script_path = os.path.join(SCRIPTS_DIR, "kernel_coe_generator.py")

    def tearDown(self):
        self.test_dir_obj.cleanup()

    @unittest.skipIf(kernel_main_cli is None, "kernel_coe_generator.py not imported")
    def test_cli_successful_run(self):
        """Test CLI successful execution."""
        result = subprocess.run(
            [sys.executable, self.script_path, self.main_image_path, self.neighbor_images_dir, self.output_coe_path],
            capture_output=True, text=True, check=False
        )
        # Script prints success to stdout, so check for that too.
        self.assertEqual(result.returncode, 0, f"CLI script failed.\nStdout:\n{result.stdout}\nStderr:\n{result.stderr}")
        self.assertTrue(os.path.exists(self.output_coe_path), "COE file not created by CLI.")
        self.assertTrue("Successfully wrote" in result.stdout, "Success message not found in stdout.")

    @unittest.skipIf(kernel_main_cli is None, "kernel_coe_generator.py not imported")
    def test_cli_missing_arguments(self):
        """Test CLI with missing arguments."""
        result = subprocess.run(
            [sys.executable, self.script_path, self.main_image_path, self.neighbor_images_dir], # Missing output_coe_path
            capture_output=True, text=True, check=False
        )
        self.assertNotEqual(result.returncode, 0)
        self.assertTrue("usage:" in result.stderr.lower() or "error: the following arguments are required" in result.stderr.lower())

    @unittest.skipIf(kernel_main_cli is None, "kernel_coe_generator.py not imported")
    def test_cli_main_image_not_found(self):
        result = subprocess.run(
            [sys.executable, self.script_path, "non_existent_main.bmp", self.neighbor_images_dir, self.output_coe_path],
            capture_output=True, text=True, check=False
        )
        self.assertNotEqual(result.returncode, 0)
        self.assertTrue("File Error:" in result.stdout or "FileNotFoundError" in result.stdout) # Script prints errors to stdout
    
    @unittest.skipIf(kernel_main_cli is None, "kernel_coe_generator.py not imported")
    def test_cli_version_argument(self):
        """Test the --version argument."""
        result = subprocess.run(
            [sys.executable, self.script_path, "--version"],
            capture_output=True, text=True, check=False
        )
        self.assertEqual(result.returncode, 0, f"CLI --version failed: {result.stderr}")
        self.assertTrue("kernel_coe_generator.py 1.0.0" in result.stdout,
                        f"Version string not found in stdout:\n{result.stdout}")


if __name__ == '__main__':
    unittest.main()
