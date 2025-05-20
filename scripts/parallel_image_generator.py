"""
Generates 8 shifted versions of an input image.

This script reads an input image (e.g., "gray.bmp") and creates eight new
images, each representing a 1-pixel shift in one of the eight cardinal and
diagonal directions (up, down, left, right, up-left, up-right, down-left,
down-right). The shifted images are saved as BMP files in a specified output
directory. An unshifted version named "center.bmp" is also saved.

This utility is typically used to prepare input images for the
`kernel_coe_generator.py` script, which expects these shifted versions
to construct its COE file.
"""
import os
import cv2
import numpy as np
import argparse # For command-line argument parsing
from typing import Union, Tuple, List

# Define PathLike for type hinting paths
PathLike = Union[str, bytes, os.PathLike]

# --- New Refactored Functions ---

def _shift_image(image: np.ndarray, y_offset: int, x_offset: int) -> np.ndarray:
    """
    Shifts an image by the given y and x offsets.

    Positive y_offset shifts content down.
    Positive x_offset shifts content right.
    Empty areas are filled with zeros.

    Args:
        image: The input image as a NumPy array.
        y_offset: Vertical shift amount.
        x_offset: Horizontal shift amount.

    Returns:
        A new NumPy array containing the shifted image.
    """
    shifted_image = np.zeros_like(image)
    h, w = image.shape[:2]

    # Define source and destination slices
    # For y (rows)
    if y_offset > 0: # Content moves DOWN
        src_y_start, src_y_end = 0, h - y_offset
        dst_y_start, dst_y_end = y_offset, h
    elif y_offset < 0: # Content moves UP
        src_y_start, src_y_end = -y_offset, h # abs(y_offset)
        dst_y_start, dst_y_end = 0, h + y_offset # h - abs(y_offset)
    else: # No y_offset
        src_y_start, src_y_end = 0, h
        dst_y_start, dst_y_end = 0, h

    # For x (columns)
    if x_offset > 0: # Content moves RIGHT
        src_x_start, src_x_end = 0, w - x_offset
        dst_x_start, dst_x_end = x_offset, w
    elif x_offset < 0: # Content moves LEFT
        src_x_start, src_x_end = -x_offset, w # abs(x_offset)
        dst_x_start, dst_x_end = 0, w + x_offset # w - abs(x_offset)
    else: # No x_offset
        src_x_start, src_x_end = 0, w
        dst_x_start, dst_x_end = 0, w
    
    # Perform the shift by copying the relevant slice
    if src_y_end > src_y_start and src_x_end > src_x_start: # Ensure valid slice
        shifted_image[dst_y_start:dst_y_end, dst_x_start:dst_x_end] = \
            image[src_y_start:src_y_end, src_x_start:src_x_end]
            
    return shifted_image


def create_shifted_images(input_image_path: PathLike, output_dir: PathLike) -> None:
    """
    Loads an input image, creates an unshifted copy ("gray.bmp" for compatibility)
    and 8 versions shifted by 1 pixel in cardinal and diagonal directions.
    These are saved to the specified output directory with names expected by
    `kernel_coe_generator.py` (e.g., up.bmp, leftup.bmp).

    Args:
        input_image_path: Path to the input image file.
        output_dir: Directory where the 9 output images will be saved.

    Raises:
        FileNotFoundError: If the input image is not found.
        IOError: If an image cannot be written.
        Exception: For other image processing errors.
    """
    input_path_str = str(input_image_path)
    output_dir_str = str(output_dir)

    input_path_str = str(input_image_path)
    if not os.path.exists(input_path_str):
        raise FileNotFoundError(f"Error: Input image file not found at '{input_path_str}'")

    img = cv2.imread(input_path_str)
    if img is None:
        raise ValueError(f"Error: Could not read or decode input image from '{input_path_str}'. Check file format, integrity, or permissions.")

    os.makedirs(output_dir_str, exist_ok=True)
    print(f"Output directory '{output_dir_str}' ensured.")
    
    # Define shifts to match names expected by kernel_coe_generator.py
    # (y_offset_for_content_shift, x_offset_for_content_shift), "output_filename_for_kernel_script.bmp"
    # Positive y_offset means content moves DOWN, so to get the pixel *above* (for "up.bmp"), content shifts DOWN.
    kernel_script_shifts: List[Tuple[Tuple[int, int], str]] = [
        ((0, 0), "gray.bmp"),      # Center pixel data, unshifted
        ((1, 0), "up.bmp"),        # To get pixel ABOVE, main image content shifts DOWN
        ((-1, 0), "down.bmp"),     # To get pixel BELOW, main image content shifts UP
        ((0, 1), "left.bmp"),      # To get pixel LEFT, main image content shifts RIGHT
        ((0, -1), "right.bmp"),    # To get pixel RIGHT, main image content shifts LEFT
        ((1, 1), "leftup.bmp"),    # To get pixel UP-LEFT, main image content shifts DOWN-RIGHT
        ((-1, 1), "leftdown.bmp"), # To get pixel DOWN-LEFT, main image content shifts UP-RIGHT
        ((1, -1), "rightup.bmp"),  # To get pixel UP-RIGHT, main image content shifts DOWN-LEFT
        ((-1, -1), "rightdown.bmp")# To get pixel DOWN-RIGHT, main image content shifts UP-LEFT
    ]

    print(f"Generating 9 shifted/center images for '{input_path_str}':")
    for (y_offset, x_offset), filename in kernel_script_shifts:
        try:
            shifted_img = _shift_image(img, y_offset, x_offset)
            output_path = os.path.join(output_dir_str, filename)
            if not cv2.imwrite(output_path, shifted_img):
                raise IOError(f"Failed to write image to '{output_path}'. Check path and permissions.")
            print(f"  Successfully saved '{filename}' (input content shifted by y={y_offset}, x={x_offset} to achieve this view)")
        except Exception as e:
            print(f"Error processing or saving '{filename}': {e}")
            raise # Re-raise to be caught by CLI handler or caller
    
    print("Shifted image generation complete.")

# --- End of New Refactored Functions ---

# --- Command-Line Interface ---
def main_cli():
    """
    Command-line interface for the shifted image generator.
    """
    parser = argparse.ArgumentParser(
        description=(
            "Generates an unshifted 'gray.bmp' and 8 shifted versions of an input image\n"
            "(up.bmp, down.bmp, left.bmp, right.bmp, up_left.bmp, up_right.bmp,\n"
            "down_left.bmp, down_right.bmp) into a specified output directory.\n"
            "These are named to be compatible with kernel_coe_generator.py."
        ),
        formatter_class=argparse.RawTextHelpFormatter
    )
    parser.add_argument(
        "input_image_path",
        type=str,
        help="Path to the input image file (e.g., a grayscale image to be used as the base)."
    )
    parser.add_argument(
        "output_dir",
        type=str,
        help="Directory where the 9 output BMP images (gray.bmp, up.bmp, etc.) will be saved."
    )
    parser.add_argument(
        '--version',
        action='version',
        version='%(prog)s 1.0.0'
    )

    args = parser.parse_args()

    try:
        print(f"Starting shifted image generation...")
        print(f"  Input image: '{args.input_image_path}'")
        print(f"  Output directory: '{args.output_dir}'")
        create_shifted_images(args.input_image_path, args.output_dir)
    except FileNotFoundError as e:
        print(f"File Error: {e}")
    except ValueError as e: # For errors like incorrect image dimensions from helper
        print(f"Data Error: {e}")
    except IOError as e: # For cv2.imwrite failures
        print(f"File I/O Error: {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        # import traceback
        # print(traceback.format_exc())

if __name__ == "__main__":
    main_cli()
