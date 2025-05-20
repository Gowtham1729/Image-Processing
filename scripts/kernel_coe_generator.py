"""
Generates a Xilinx COE (Coefficient) file for image processing,
specifically tailored for kernel-based operations.

The COE file combines data from nine pre-shifted grayscale versions of an image
(representing a 3x3 neighborhood) and the original color pixel data.
Each line in the COE file represents one pixel and is 96 bits long:
- The first 72 bits: Concatenated 8-bit binary values of the blue channel
  of the corresponding pixel from nine grayscale images (gray, left, right,
  up, down, leftup, leftdown, rightup, rightdown). This effectively
  provides the 3x3 neighborhood grayscale data.
- The next 24 bits: Concatenated 8-bit binary values of the B, G, R channels
  of the corresponding pixel from the original color image.
"""
import os
import cv2
import argparse # For command-line argument parsing
from typing import Union, List, Dict, Any # Any for numpy array from cv2

# Define PathLike for type hinting paths
PathLike = Union[str, bytes, os.PathLike]

# Define names for the 9 shifted/grayscale images.
# These are expected to be .bmp files in the same directory as the main color image.
NEIGHBOR_IMAGE_NAMES = [
    "gray", "left", "right", "up", "down",
    "leftup", "leftdown", "rightup", "rightdown"
]

def _int_to_8bit_binary_str(value: int) -> str:
    """Converts an integer (0-255) to an 8-bit binary string."""
    if not 0 <= value <= 255:
        raise ValueError(f"Value {value} is out of range (0-255).")
    return bin(value)[2:].zfill(8)

# --- New Refactored Kernel COE Generation Function ---

def create_kernel_coe_file(
    main_color_image_path: PathLike,
    neighbor_images_dir: PathLike,
    output_coe_path: PathLike
) -> None:
    """
    Generates a Xilinx COE file for kernel-based operations.

    This function reads a main color image and nine corresponding grayscale "neighbor"
    images (e.g., 'gray.bmp', 'left.bmp', etc., as defined in NEIGHBOR_IMAGE_NAMES)
    from the specified directory `neighbor_images_dir`. It then processes these
    images pixel by pixel to create 96-bit binary strings for each pixel location.

    Each 96-bit string in the COE file consists of:
    1.  72 bits: Concatenated 8-bit binary values of the blue channel from each of
        the nine neighbor images, processed in the order defined by
        NEIGHBOR_IMAGE_NAMES. This represents the 3x3 grayscale neighborhood.
    2.  24 bits: Concatenated 8-bit binary values of the B, G, and R channels
        (in that order) from the main color image.

    The output COE file will have the standard header and vector format, with the
    last line of the pixel data vector ending with a semicolon ';'.

    Args:
        main_color_image_path: Path to the main input color image file.
        neighbor_images_dir: Path to the directory containing the nine grayscale
                             neighbor images (must be .bmp files named according
                             to NEIGHBOR_IMAGE_NAMES).
        output_coe_path: Path for the generated output COE file.

    Raises:
        FileNotFoundError: If the main color image or any of the neighbor
                           images are not found.
        ValueError: If images do not have matching dimensions, or if pixel data
                    is invalid (e.g., channel value out of 0-255 range).
        IOError: If there's an error writing the output COE file.
        Exception: For other image loading or processing errors.
    """
    main_color_img_str = str(main_color_image_path)
    neighbor_dir_str = str(neighbor_images_dir)
    output_coe_str = str(output_coe_path)

    # 1. Load main color image
    main_color_img = cv2.imread(main_color_img_str)
    if main_color_img is None:
        raise FileNotFoundError(f"Error: Main color image not found or could not be read: '{main_color_img_str}'")
    
    num_rows, num_cols = main_color_img.shape[:2]
    print(f"Loaded main color image '{main_color_img_str}' (Shape: {num_rows}x{num_cols})")

    # 2. Load neighbor images
    loaded_neighbor_images: Dict[str, Any] = {}
    for name in NEIGHBOR_IMAGE_NAMES:
        img_file = f"{name}.bmp"
        full_img_path = os.path.join(neighbor_dir_str, img_file)
        img_data = cv2.imread(full_img_path)
        if img_data is None:
            raise FileNotFoundError(f"Error: Neighbor image '{img_file}' not found or unreadable in '{neighbor_dir_str}'")
        
        # Validate dimensions
        if img_data.shape[0] != num_rows or img_data.shape[1] != num_cols:
            raise ValueError(f"Dimension mismatch: Neighbor image '{img_file}' (Shape: {img_data.shape[:2]}) "
                             f"does not match main image shape ({num_rows}x{num_cols}).")
        loaded_neighbor_images[name] = img_data
    print(f"All {len(NEIGHBOR_IMAGE_NAMES)} neighbor images loaded and dimensions validated.")

    # 3. Process pixels and generate COE lines
    output_coe_lines: List[str] = []
    for r_idx in range(num_rows):
        for c_idx in range(num_cols):
            try:
                # Part A: 72 bits from neighbor images (blue channel)
                neighbor_bits_accumulator = []
                for name_key in NEIGHBOR_IMAGE_NAMES: # Iterate in defined order
                    neighbor_pixel_blue_channel = loaded_neighbor_images[name_key][r_idx, c_idx, 0]
                    neighbor_bits_accumulator.append(_int_to_8bit_binary_str(int(neighbor_pixel_blue_channel)))
                
                # Part B: 24 bits from main color image (BGR channels)
                original_pixel_bgr = main_color_img[r_idx, c_idx]
                if len(original_pixel_bgr) != 3: # Should be guaranteed by imread unless grayscale
                     raise ValueError(f"Main image pixel at ({r_idx},{c_idx}) is not 3-channel BGR.")
                
                original_pixel_bits_accumulator = [
                    _int_to_8bit_binary_str(int(channel_val)) for channel_val in original_pixel_bgr
                ] # B, G, R order

                # Combine and add to list
                full_coe_line = "".join(neighbor_bits_accumulator) + "".join(original_pixel_bits_accumulator)
                output_coe_lines.append(full_coe_line)

            except IndexError: # Should not happen if dimensions are validated, but as safeguard
                raise ValueError(f"Pixel index ({r_idx},{c_idx}) out of bounds during processing.")
            except ValueError as ve: # From _int_to_8bit_binary_str or int() conversion
                raise ValueError(f"Error processing pixel data at ({r_idx},{c_idx}): {ve}")

    # 4. Write to COE file
    try:
        with open(output_coe_str, "w") as coe_file:
            coe_file.write("memory_initialization_radix=2;\n")
            coe_file.write("memory_initialization_vector=\n")

            if not output_coe_lines:
                print(f"Warning: No pixel data processed for '{main_color_img_str}'. Writing empty COE vector.")
                coe_file.write(";\n")
            else:
                for i, line_data in enumerate(output_coe_lines):
                    coe_file.write(line_data)
                    if i < len(output_coe_lines) - 1:
                        coe_file.write(",\n")
                    else:
                        coe_file.write(";\n") # Last line ends with a semicolon
            
            num_written_lines = len(output_coe_lines)
            print(f"Successfully wrote {num_written_lines} lines to COE file: '{output_coe_str}'")
    except IOError as e:
        raise IOError(f"Error writing COE file to '{output_coe_str}': {e}")

# --- End of New Refactored Kernel COE Generation Function ---

# --- Command-Line Interface ---
def main_cli():
    """
    Command-line interface for the kernel-based COE file generator.
    """
    parser = argparse.ArgumentParser(
        description=(
            "Generates a Xilinx COE file for kernel operations. Combines data from a main\n"
            "color image and 9 pre-shifted grayscale neighbor images (e.g., gray.bmp,\n"
            "left.bmp, etc.) located in a specified directory. The neighbor images must\n"
            "be named according to the fixed list: " + ", ".join(NEIGHBOR_IMAGE_NAMES) + ".\n\n"
            "Output COE lines are 96 bits: 72 bits from neighbors (blue channels) + 24 bits\n"
            "from the main image (BGR channels)."
        ),
        formatter_class=argparse.RawTextHelpFormatter
    )
    parser.add_argument(
        "main_image_path",
        type=str,
        help="Path to the main input color image file (e.g., flower.jpg)."
    )
    parser.add_argument(
        "neighbor_images_dir",
        type=str,
        help="Path to the directory containing the nine grayscale neighbor images (.bmp format)."
    )
    parser.add_argument(
        "output_coe_path",
        type=str,
        help="Path for the generated output COE file (e.g., kernel_image.coe)."
    )
    parser.add_argument(
        '--version',
        action='version',
        version='%(prog)s 1.0.0'
    )

    args = parser.parse_args()

    try:
        print(f"Starting kernel COE generation...")
        print(f"  Main color image: '{args.main_image_path}'")
        print(f"  Neighbor images directory: '{args.neighbor_images_dir}'")
        print(f"  Output COE file: '{args.output_coe_path}'")
        create_kernel_coe_file(args.main_image_path, args.neighbor_images_dir, args.output_coe_path)
        # Success message is printed within create_kernel_coe_file
    except FileNotFoundError as e:
        print(f"File Error: {e}")
    except ValueError as e:
        print(f"Data or Configuration Error: {e}")
    except IOError as e:
        print(f"File I/O Error: {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        # import traceback
        # print(traceback.format_exc())

if __name__ == "__main__":
    main_cli()
