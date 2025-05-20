import unittest
import os
import tempfile
import subprocess
import sys
import cv2 # For creating and reading sample images
import numpy as np
from typing import Tuple

# Adjust sys.path to allow importing from the 'scripts' directory
SCRIPTS_DIR = os.path.join(os.path.dirname(__file__), '..', 'scripts')
sys.path.insert(0, os.path.abspath(SCRIPTS_DIR))

try:
    # Assuming parallel_image_generator.py contains create_shifted_images and main_cli
    from parallel_image_generator import create_shifted_images, main_cli as parallel_main_cli, _shift_image
    # NEIGHBOR_IMAGE_NAMES might not be in parallel_image_generator, but kernel_coe_generator
    # For parallel_image_generator, the output names are defined in its create_shifted_images
    # Let's redefine the expected output names here for clarity in tests.
    EXPECTED_OUTPUT_FILENAMES = [
        "gray.bmp", "up.bmp", "down.bmp", "left.bmp", "right.bmp",
        "leftup.bmp", "leftdown.bmp", "rightup.bmp", "rightdown.bmp"
    ]
except ImportError as e:
    print(f"Error: parallel_image_generator.py not found or sys.path incorrect: {e}")
    create_shifted_images = None
    parallel_main_cli = None
    _shift_image = None # Helper from the script itself, useful for test verification
    EXPECTED_OUTPUT_FILENAMES = []


def create_sample_grayscale_image(dir_path: str, filename: str = "sample_gray.bmp", 
                                  dims: Tuple[int, int] = (4, 4)) -> Tuple[str, np.ndarray]:
    """
    Creates a sample grayscale BMP image with a simple pattern.
    Returns the full path to the image and the image data as a NumPy array.
    The image will have a diagonal line of 255, and other patterned values.
    """
    img_path = os.path.join(dir_path, filename)
    rows, cols = dims
    img_data = np.zeros((rows, cols), dtype=np.uint8) # Grayscale
    for r in range(rows):
        for c in range(cols):
            if r == c:
                img_data[r, c] = 255 # Diagonal
            elif r < c:
                img_data[r, c] = 100 # Upper triangle
            else:
                img_data[r, c] = 50  # Lower triangle
    
    # Ensure it's saved as a 3-channel image if cv2.imread in script expects that,
    # even if content is grayscale. Most BMPs are 3-channel.
    # The script parallel_image_generator.py uses cv2.imread without flags,
    # so it will load as 3-channel if the BMP is saved that way.
    # The _shift_image function operates on image.shape[:2] so it's fine with 3-channel.
    if len(img_data.shape) == 2: # if it's truly grayscale
        img_data_bgr = cv2.cvtColor(img_data, cv2.COLOR_GRAY2BGR)
    else:
        img_data_bgr = img_data

    cv2.imwrite(img_path, img_data_bgr)
    return img_path, img_data # Return the original grayscale data for easy comparison logic


class TestCreateShiftedImagesFunction(unittest.TestCase):
    """
    Tests for the create_shifted_images function in parallel_image_generator.py.
    """
    def setUp(self):
        self.test_dir_obj = tempfile.TemporaryDirectory()
        self.test_dir = self.test_dir_obj.name
        self.input_image_path, self.original_image_data = create_sample_grayscale_image(
            self.test_dir, "input_gray.bmp", dims=(4, 4)
        )
        self.output_shifted_dir = os.path.join(self.test_dir, "shifted_output")
        # The _shift_image from the script is used for generating expected results.
        self.script_shift_image_fn = _shift_image 


    def tearDown(self):
        self.test_dir_obj.cleanup()

    @unittest.skipIf(create_shifted_images is None or _shift_image is None, "parallel_image_generator.py not imported correctly")
    def test_successful_generation_all_files_exist(self):
        """Test that all 9 output image files are created."""
        create_shifted_images(self.input_image_path, self.output_shifted_dir)
        self.assertTrue(os.path.isdir(self.output_shifted_dir))
        for filename in EXPECTED_OUTPUT_FILENAMES:
            expected_file_path = os.path.join(self.output_shifted_dir, filename)
            self.assertTrue(os.path.exists(expected_file_path), f"{filename} was not created.")

    @unittest.skipIf(create_shifted_images is None or _shift_image is None, "parallel_image_generator.py not imported correctly")
    def test_output_directory_creation(self):
        """Test that the output directory is created if it doesn't exist."""
        non_existent_output_dir = os.path.join(self.test_dir, "new_shifted_output")
        self.assertFalse(os.path.exists(non_existent_output_dir))
        create_shifted_images(self.input_image_path, non_existent_output_dir)
        self.assertTrue(os.path.isdir(non_existent_output_dir))

    @unittest.skipIf(create_shifted_images is None or _shift_image is None, "parallel_image_generator.py not imported correctly")
    def test_shifted_image_content(self):
        """Test pixel content of each of the 9 generated images."""
        create_shifted_images(self.input_image_path, self.output_shifted_dir)
        
        # Load the original image as BGR because that's how imwrite saves it, and imread will load it
        # The _shift_image function in the script works with this BGR image.
        original_bgr_img_for_shifting = cv2.imread(self.input_image_path) # Should be BGR
        self.assertIsNotNone(original_bgr_img_for_shifting, "Failed to load source image for content test.")

        # Define the shifts and corresponding filenames as in the script
        kernel_script_shifts_map = {
            "gray.bmp": (0, 0),
            "up.bmp": (1, 0),    # Content shifts DOWN
            "down.bmp": (-1, 0), # Content shifts UP
            "left.bmp": (0, 1),  # Content shifts RIGHT
            "right.bmp": (0, -1),# Content shifts LEFT
            "leftup.bmp": (1, 1), # Content shifts DOWN-RIGHT
            "leftdown.bmp": (-1, 1),# Content shifts UP-RIGHT
            "rightup.bmp": (1, -1), # Content shifts DOWN-LEFT
            "rightdown.bmp": (-1, -1) # Content shifts UP-LEFT
        }

        for filename, (y_offset, x_offset) in kernel_script_shifts_map.items():
            with self.subTest(filename=filename, y_offset=y_offset, x_offset=x_offset):
                generated_image_path = os.path.join(self.output_shifted_dir, filename)
                generated_image_data = cv2.imread(generated_image_path)
                self.assertIsNotNone(generated_image_data, f"Failed to load generated image: {filename}")

                # Generate expected image using the script's own _shift_image logic
                expected_shifted_data = self.script_shift_image_fn(original_bgr_img_for_shifting, y_offset, x_offset)
                
                np.testing.assert_array_equal(
                    generated_image_data, expected_shifted_data,
                    err_msg=f"Pixel content mismatch for {filename}."
                )

    @unittest.skipIf(create_shifted_images is None, "parallel_image_generator.py not imported")
    def test_input_file_not_found(self):
        """Test FileNotFoundError when input image does not exist."""
        with self.assertRaises(FileNotFoundError):
            create_shifted_images("non_existent.bmp", self.output_shifted_dir)

    @unittest.skipIf(create_shifted_images is None, "parallel_image_generator.py not imported")
    def test_invalid_input_image_file(self):
        """Test error handling for an invalid image file (e.g., a text file)."""
        invalid_image_path = os.path.join(self.test_dir, "invalid_image.bmp")
        with open(invalid_image_path, "w") as f:
            f.write("This is not an image file.")
        
        # create_shifted_images should raise FileNotFoundError if cv2.imread returns None
        with self.assertRaises(FileNotFoundError):
            create_shifted_images(invalid_image_path, self.output_shifted_dir)


class TestParallelCliExecution(unittest.TestCase):
    """
    Tests for the command-line interface (main_cli) of parallel_image_generator.py.
    """
    def setUp(self):
        self.test_dir_obj = tempfile.TemporaryDirectory()
        self.test_dir = self.test_dir_obj.name
        self.input_image_path, _ = create_sample_grayscale_image(
            self.test_dir, "cli_input.bmp", dims=(3,3)
        )
        self.output_cli_dir = os.path.join(self.test_dir, "cli_shifted_output")
        self.script_path = os.path.join(SCRIPTS_DIR, "parallel_image_generator.py")

    def tearDown(self):
        self.test_dir_obj.cleanup()

    @unittest.skipIf(parallel_main_cli is None, "parallel_image_generator.py not imported")
    def test_cli_successful_run(self):
        """Test CLI successful execution with valid arguments."""
        result = subprocess.run(
            [sys.executable, self.script_path, self.input_image_path, self.output_cli_dir],
            capture_output=True, text=True, check=False
        )
        self.assertEqual(result.returncode, 0, f"CLI script failed.\nStdout:\n{result.stdout}\nStderr:\n{result.stderr}")
        self.assertTrue(os.path.isdir(self.output_cli_dir))
        for filename in EXPECTED_OUTPUT_FILENAMES:
            self.assertTrue(os.path.exists(os.path.join(self.output_cli_dir, filename)), 
                            f"{filename} not created by CLI.")
        self.assertTrue("Shifted image generation complete." in result.stdout)


    @unittest.skipIf(parallel_main_cli is None, "parallel_image_generator.py not imported")
    def test_cli_missing_arguments(self):
        """Test CLI behavior with missing arguments."""
        result = subprocess.run(
            [sys.executable, self.script_path, self.input_image_path], # Missing output_dir
            capture_output=True, text=True, check=False
        )
        self.assertNotEqual(result.returncode, 0, "CLI should fail with missing arguments.")
        self.assertTrue("usage:" in result.stderr.lower() or "error: the following arguments are required" in result.stderr.lower(),
                        f"Error message for missing arguments not found in stderr:\n{result.stderr}")

    @unittest.skipIf(parallel_main_cli is None, "parallel_image_generator.py not imported")
    def test_cli_input_file_not_found(self):
        """Test CLI with a non-existent input image file."""
        result = subprocess.run(
            [sys.executable, self.script_path, "non_existent.bmp", self.output_cli_dir],
            capture_output=True, text=True, check=False
        )
        self.assertNotEqual(result.returncode, 0, "CLI should fail for non-existent input file.")
        self.assertTrue("File Error:" in result.stdout or "FileNotFoundError" in result.stdout, # Script prints errors to stdout
                        f"Error message for non-existent file not found.\nStdout:\n{result.stdout}")
    
    @unittest.skipIf(parallel_main_cli is None, "parallel_image_generator.py not imported")
    def test_cli_version_argument(self):
        """Test the --version argument."""
        result = subprocess.run(
            [sys.executable, self.script_path, "--version"],
            capture_output=True, text=True, check=False
        )
        self.assertEqual(result.returncode, 0, f"CLI --version failed: {result.stderr}")
        # Assuming version is "1.0.0" as set in the script's argparse
        self.assertTrue("parallel_image_generator.py 1.0.0" in result.stdout,
                        f"Version string not found in stdout:\n{result.stdout}")


if __name__ == '__main__':
    unittest.main()
