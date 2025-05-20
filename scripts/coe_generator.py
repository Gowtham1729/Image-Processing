"""
Converts an image file to a Xilinx COE (Coefficient) file format.

The COE file will contain binary representations of the image pixels.
Each pixel is represented as a 96-bit binary string, where the first 72 bits
are padding (zeros) and the last 24 bits represent the BGR pixel values
(8 bits per channel, BGR order as loaded by OpenCV).
"""
import os
import cv2
import argparse # Added for command-line argument parsing
from typing import Union, List

# Define PathLike for type hinting paths, consistent with original usage
PathLike = Union[str, bytes, os.PathLike]


# --- New Refactored Functions ---

def _convert_channel_to_8bit_binary(channel_value: int) -> str:
    """
    Converts a single color channel value (0-255) into its 8-bit binary string.

    Args:
        channel_value: An integer representing the color channel value.

    Returns:
        An 8-bit binary string representation of the channel value,
        left-padded with zeros if necessary.
    
    Raises:
        ValueError: If channel_value is not between 0 and 255.
    """
    if not 0 <= channel_value <= 255:
        raise ValueError(f"Channel value {channel_value} must be between 0 and 255.")
    return bin(channel_value)[2:].zfill(8)  # [2:] removes the "0b" prefix


def image_to_coe(image_path: PathLike, coe_path: PathLike) -> None:
    """
    Reads an image, converts its pixels to binary strings, and writes them
    to a Xilinx COE file with correct formatting.

    The COE file format produced is:
    memory_initialization_radix=2;
    memory_initialization_vector=
    [72_ZERO_BITS]B7B6...B0G7G6...G0R7R6...R0,  (BGR order from OpenCV)
    ...
    [72_ZERO_BITS]B7B6...B0G7G6...G0R7R6...R0;  (last entry ends with a semicolon)

    Args:
        image_path: Path to the input image file.
        coe_path: Path to the output COE file.
    
    Raises:
        FileNotFoundError: If the input image_path does not exist.
        IOError: If there's an error writing the COE file.
        ValueError: If pixel data is invalid (e.g., wrong number of components,
                    channel value out of range).
        Exception: For other image loading or processing errors (e.g., corrupted image).
    """
    img_path_str = str(image_path)
    if not os.path.exists(img_path_str):
        raise FileNotFoundError(f"Error: Input image file not found at '{img_path_str}'")

    try:
        image = cv2.imread(img_path_str)
        if image is None:
            raise Exception(f"Error: Could not read image from '{img_path_str}'. "
                            "Check file format, integrity, or permissions.")
    except Exception as e:
        raise Exception(f"Error loading image '{img_path_str}' with OpenCV: {e}")

    pixel_binary_strings: List[str] = []

    # OpenCV loads images in BGR order by default.
    for row_idx, row in enumerate(image):
        for col_idx, pixel_bgr in enumerate(row):
            if not hasattr(pixel_bgr, '__len__') or len(pixel_bgr) != 3:
                raise ValueError(f"Pixel at ({row_idx},{col_idx}) has {len(pixel_bgr)} "
                                 f"components, expected 3 (BGR). Value: {pixel_bgr}")
            try:
                b_channel, g_channel, r_channel = pixel_bgr
                
                binary_b = _convert_channel_to_8bit_binary(int(b_channel))
                binary_g = _convert_channel_to_8bit_binary(int(g_channel))
                binary_r = _convert_channel_to_8bit_binary(int(r_channel))
                
                combined_pixel_binary = binary_b + binary_g + binary_r # BGR order
                padded_binary_pixel = '0' * 72 + combined_pixel_binary
                pixel_binary_strings.append(padded_binary_pixel)
            except ValueError as ve: # From _convert_channel_to_8bit_binary or int conversion
                raise ValueError(f"Error processing pixel value at ({row_idx},{col_idx}): {ve}")
            except Exception as e_pixel:
                raise Exception(f"Unexpected error processing pixel at ({row_idx},{col_idx}): {e_pixel}")

    try:
        with open(coe_path, "w") as coe_file:
            coe_file.write("memory_initialization_radix=2;\n")
            coe_file.write("memory_initialization_vector=\n")
            
            if not pixel_binary_strings:
                print(f"Warning: No pixel data generated for '{img_path_str}'. "
                      "The input image might be empty or of an unsupported type.")
                coe_file.write(";\n") # Empty vector, terminated with a semicolon
            else:
                for i, binary_string in enumerate(pixel_binary_strings):
                    coe_file.write(binary_string)
                    if i < len(pixel_binary_strings) - 1:
                        coe_file.write(',\n')
                    else:
                        coe_file.write(';\n') # Last entry ends with a semicolon
            
            num_pixels = len(pixel_binary_strings)
            print(f"Successfully wrote COE file to '{coe_path}' with {num_pixels} pixel entr{'y' if num_pixels == 1 else 'ies'}.")

    except IOError as e:
        raise IOError(f"Error writing COE file to '{coe_path}': {e}")

# --- End of New Refactored Functions ---

# --- Command-Line Interface ---
def main_cli():
    """
    Command-line interface for the image to COE converter.
    Parses arguments and calls the image_to_coe function.
    """
    parser = argparse.ArgumentParser(
        description=(
            "Converts an image file to a Xilinx COE (Coefficient) file.\n"
            "The COE file contains 96-bit binary representations of pixels:\n"
            "  - 72 zero bits (padding)\n"
            "  - 24 bits for BGR color (8 bits per channel, BGR order)\n\n"
            "Example:\n"
            "  python scripts/coe_generator.py input.jpg output.coe"
        ),
        formatter_class=argparse.RawTextHelpFormatter # Preserves newlines in help
    )
    parser.add_argument(
        "input_image",
        type=str,
        help="Path to the input image file (e.g., flower.jpg)."
    )
    parser.add_argument(
        "output_coe",
        type=str,
        help="Path for the output COE file (e.g., flower_image.coe)."
    )
    parser.add_argument(
        '--version',
        action='version',
        version='%(prog)s 1.0.0'
    )

    args = parser.parse_args()

    try:
        print(f"Starting conversion: '{args.input_image}' -> '{args.output_coe}'")
        image_to_coe(args.input_image, args.output_coe)
        # Success message is printed within image_to_coe
    except FileNotFoundError as e:
        print(f"Error: {e}")
        print("Please ensure the input file path is correct and the file exists.")
    except IOError as e:
        print(f"File I/O Error: {e}")
        print("Please ensure you have write permissions for the output path and the path is valid.")
    except ValueError as e: # Catch errors from pixel processing or channel conversion
        print(f"Data Error: {e}")
        print("Please ensure the input image is a valid BGR image and pixel values are correct.")
    except Exception as e: # Catch-all for other unexpected errors from image_to_coe
        print(f"An unexpected error occurred: {e}")
        # For debugging, one might print traceback:
        # import traceback
        # print(traceback.format_exc())

if __name__ == "__main__":
    main_cli()
