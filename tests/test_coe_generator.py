import unittest
import os
import tempfile
import subprocess
import sys
import cv2 # For creating sample image
import numpy as np

# Adjust sys.path to allow importing from the 'scripts' directory
# This assumes the tests are run from the root of the repository
SCRIPTS_DIR = os.path.join(os.path.dirname(__file__), '..', 'scripts')
sys.path.insert(0, os.path.abspath(SCRIPTS_DIR))

try:
    from coe_generator import image_to_coe, main_cli as coe_main_cli
except ImportError:
    # This might happen if the script is not found, handle gracefully for linting/static analysis
    print("Error: coe_generator.py not found or sys.path incorrect. Tests will likely fail.")
    print(f"Current sys.path: {sys.path}")
    print(f"SCRIPTS_DIR resolved to: {os.path.abspath(SCRIPTS_DIR)}")
    image_to_coe = None # Placeholder
    coe_main_cli = None # Placeholder


class TestImageToCoeFunction(unittest.TestCase):
    """
    Tests for the image_to_coe function in coe_generator.py.
    """
    def setUp(self):
        """Set up a temporary directory and a sample image for tests."""
        self.test_dir = tempfile.TemporaryDirectory()
        self.sample_image_path = os.path.join(self.test_dir.name, "sample_1x2.bmp")
        self.output_coe_path = os.path.join(self.test_dir.name, "output.coe")

        # Create a 1x2 BGR image: Pixel1=Blue, Pixel2=Green
        # OpenCV uses BGR order
        img_data = np.zeros((1, 2, 3), dtype=np.uint8)
        img_data[0, 0] = [255, 0, 0]  # Blue pixel (B=255, G=0, R=0)
        img_data[0, 1] = [0, 255, 0]  # Green pixel (B=0, G=255, R=0)
        
        cv2.imwrite(self.sample_image_path, img_data)

        # Expected COE content parts for the sample image
        self.expected_padding = '0' * 72
        # Pixel 1 (Blue: B=255, G=0, R=0)
        self.expected_pixel1_bgr_bin = "111111110000000000000000" # BGR
        self.expected_pixel1_coe_line = self.expected_padding + self.expected_pixel1_bgr_bin
        # Pixel 2 (Green: B=0, G=255, R=0)
        self.expected_pixel2_bgr_bin = "000000001111111100000000" # BGR
        self.expected_pixel2_coe_line = self.expected_padding + self.expected_pixel2_bgr_bin

    def tearDown(self):
        """Clean up the temporary directory."""
        self.test_dir.cleanup()

    @unittest.skipIf(image_to_coe is None, "coe_generator.py not imported")
    def test_successful_generation(self):
        """Test successful COE file generation from a valid BMP image."""
        image_to_coe(self.sample_image_path, self.output_coe_path)
        self.assertTrue(os.path.exists(self.output_coe_path), "COE file was not created.")
        
        with open(self.output_coe_path, 'r') as f:
            lines = f.readlines()
        
        self.assertGreaterEqual(len(lines), 3, "COE file does not have enough lines.")
        self.assertEqual(lines[0].strip(), "memory_initialization_radix=2;", "COE header incorrect.")
        self.assertEqual(lines[1].strip(), "memory_initialization_vector=", "COE vector line incorrect.")
        self.assertTrue(lines[2].strip().startswith(self.expected_pixel1_coe_line), "Pixel 1 data incorrect.")

    @unittest.skipIf(image_to_coe is None, "coe_generator.py not imported")
    def test_coe_content_correctness(self):
        """Verify the full content of the generated COE file."""
        image_to_coe(self.sample_image_path, self.output_coe_path)
        
        with open(self.output_coe_path, 'r') as f:
            content = f.read().strip() # Read all and strip trailing/leading whitespace

        expected_content = (
            "memory_initialization_radix=2;\n"
            "memory_initialization_vector=\n"
            f"{self.expected_pixel1_coe_line},\n"
            f"{self.expected_pixel2_coe_line};"
        )
        self.assertEqual(content, expected_content, "Generated COE content does not match expected.")

    @unittest.skipIf(image_to_coe is None, "coe_generator.py not imported")
    def test_input_file_not_found(self):
        """Test FileNotFoundError when input image does not exist."""
        non_existent_image = os.path.join(self.test_dir.name, "non_existent.bmp")
        with self.assertRaises(FileNotFoundError):
            image_to_coe(non_existent_image, self.output_coe_path)

    @unittest.skipIf(image_to_coe is None, "coe_generator.py not imported")
    def test_invalid_image_file(self):
        """Test error handling for an invalid image file (e.g., a text file)."""
        invalid_image_path = os.path.join(self.test_dir.name, "invalid_image.bmp")
        with open(invalid_image_path, "w") as f:
            f.write("This is not an image file.")
        
        # cv2.imread might not raise an error but return None, which image_to_coe should handle.
        # The specific exception might vary based on implementation details in image_to_coe.
        with self.assertRaises(Exception, msg="Should raise an exception for invalid image data."):
            image_to_coe(invalid_image_path, self.output_coe_path)


class TestMainCliExecution(unittest.TestCase):
    """
    Tests for the command-line interface (main_cli) of coe_generator.py.
    Uses subprocess to run the script as a separate process.
    """
    def setUp(self):
        self.test_dir = tempfile.TemporaryDirectory()
        self.sample_image_path = os.path.join(self.test_dir.name, "cli_sample.bmp")
        self.output_coe_path = os.path.join(self.test_dir.name, "cli_output.coe")

        img_data = np.zeros((1, 1, 3), dtype=np.uint8) # 1x1 pixel image
        img_data[0, 0] = [0, 0, 255]  # Red pixel (B=0, G=0, R=255)
        cv2.imwrite(self.sample_image_path, img_data)
        
        self.script_path = os.path.join(SCRIPTS_DIR, "coe_generator.py")

    def tearDown(self):
        self.test_dir.cleanup()

    @unittest.skipIf(coe_main_cli is None, "coe_generator.py not imported")
    def test_cli_successful_run(self):
        """Test CLI successful execution with valid arguments."""
        result = subprocess.run(
            [sys.executable, self.script_path, self.sample_image_path, self.output_coe_path],
            capture_output=True, text=True, check=False
        )
        self.assertEqual(result.returncode, 0, f"CLI script failed: {result.stderr}")
        self.assertTrue(os.path.exists(self.output_coe_path), "COE file not created by CLI.")
        
        # Verify some content
        with open(self.output_coe_path, 'r') as f:
            lines = f.readlines()
        self.assertIn("memory_initialization_radix=2;\n", lines)
        self.assertIn("000000000000000011111111;\n", lines[-1]) # Red pixel, BGR order, semicolon

    @unittest.skipIf(coe_main_cli is None, "coe_generator.py not imported")
    def test_cli_missing_arguments(self):
        """Test CLI behavior with missing arguments."""
        result = subprocess.run(
            [sys.executable, self.script_path],
            capture_output=True, text=True, check=False
        )
        self.assertNotEqual(result.returncode, 0, "CLI should fail with missing arguments.")
        self.assertTrue("usage:" in result.stderr.lower() or "error: the following arguments are required" in result.stderr.lower(),
                        f"Error message for missing arguments not found in stderr:\n{result.stderr}")

    @unittest.skipIf(coe_main_cli is None, "coe_generator.py not imported")
    def test_cli_input_file_not_found(self):
        """Test CLI with a non-existent input image file."""
        non_existent_image = os.path.join(self.test_dir.name, "non_existent.bmp")
        result = subprocess.run(
            [sys.executable, self.script_path, non_existent_image, self.output_coe_path],
            capture_output=True, text=True, check=False
        )
        self.assertNotEqual(result.returncode, 0, "CLI should fail for non-existent input file.")
        # Check for "Error: Input image file not found" or similar in stdout/stderr
        # (The script prints to stdout for errors handled by main_cli)
        self.assertTrue("Error: Input image file not found" in result.stdout or \
                        "Error: Input image file not found" in result.stderr,
                        f"Error message for non-existent file not found.\nStdout:\n{result.stdout}\nStderr:\n{result.stderr}")

    @unittest.skipIf(coe_main_cli is None, "coe_generator.py not imported")
    def test_cli_version_argument(self):
        """Test the --version argument."""
        result = subprocess.run(
            [sys.executable, self.script_path, "--version"],
            capture_output=True, text=True, check=False
        )
        self.assertEqual(result.returncode, 0, f"CLI --version failed: {result.stderr}")
        self.assertTrue("coe_generator.py 1.0.0" in result.stdout, # Version defined in coe_generator.py
                        f"Version string not found in stdout:\n{result.stdout}")


if __name__ == '__main__':
    unittest.main()
