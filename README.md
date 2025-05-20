# Image-Processing-Toolbox
(ES 203: Digital Systems Project, Prof. Joycee Mekie, IITGN)

## Table of Contents
- [Overview/Introduction](#overviewintroduction)
- [Features](#features)
- [Project Implementations](#project-implementations)
  - [PC-based (Read/Write from System)](#pc-based-readwrite-from-system)
  - [FPGA-based (Live on Basys3 with VGA Display)](#fpga-based-live-on-basys3-with-vga-display)
- [Prerequisites](#prerequisites)
- [Getting Started / Setup Instructions](#getting-started--setup-instructions)
- [Usage Instructions](#usage-instructions)
  - [Python Scripts for .coe Generation](#python-scripts-for-coe-generation)
  - [PC-based Implementation](#pc-based-implementation-1)
  - [FPGA-based Implementation](#fpga-based-implementation-1)
- [Directory Structure Overview](#directory-structure-overview)
- [Technical Details](#technical-details)
  - [Block Memory (BRAM)](#block-memory-bram)
  - [VGA Interface](#vga-interface)
  - [COE (Coefficient) File Format](#coe-coefficient-file-format)
- [Contributing](#contributing)
- [License](#license)

## Overview/Introduction
This Image Processing Toolbox is a project developed for the Basys3 FPGA, primarily using Verilog for hardware description and Python for image-to-binary conversion tasks. It enables users to perform various image processing operations, particularly convolution-based techniques. The workflow involves converting input images to a binary format (.coe files) via Python scripts, loading these files into the FPGA's Block RAM, processing the image based on user selection, and then either writing the results back to a PC or displaying them in real-time on a VGA monitor. Development and FPGA implementation are carried out using the Xilinx Vivado software suite.

## Features
The toolbox offers a range of image processing functions, selectable via the `sel_module` in the Verilog code. Some functions also allow parameter adjustments (e.g., brightness) using the `val` input. The available operations include:

| Operation                  | sel_module | Image                                                                                                                 |
|----------------------------|------------|-----------------------------------------------------------------------------------------------------------------------|
| RGB2Gray                   | 0000       | ![RGB2Gray](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/1.RGB2Gray.bmp)               |
| Increase brightness        | 0001       | ![Increase Brightness](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/2.I_brightness.bmp) |
| Decrease brightness        | 0010       | ![Decrease Brightness](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/3.D_brightness.bmp) |
| Color Inversion            | 0011       | ![Color Inversion](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/4.Invert.bmp)          |
| Red Filter                 | 0100       | ![Red Filter](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/5.Red_filter.bmp)           |
| Blue Filter                | 0101       | ![Blue Filter](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/7.Blue_filter.bmp)         |
| Green Filter               | 0110       | ![Green Filter](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/6.Green_filter.bmp)       |
| Original Image             | 0111       | ![Original Image](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/8.Original.bmp)         |
| Average Blurring           | 1000       | ![Average Blurring](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/blur.bmp)            |
| Sobel Edge Detection       | 1001       | ![Sobel Edge Detection](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/sobel_edge.bmp)   |
| Edge Detection             | 1010       | ![Edge Detection](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/outline.bmp)           |
| Motion Blurring xy         | 1011       | ![Motion Blurring xy](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/motion_blur.bmp)    |
| Emboss                     | 1100       | ![Emboss](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/embos.bmp)                     |
| Sharpen                    | 1101       | ![Sharpen](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/sharpen.bmp)                  |
| Motion Blur in x direction | 1110       | ![Motion Blur in x direction](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/motion_blur.bmp) |
| Gaussian Blur              | 1111       | ![Gaussian Blur](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/blur.bmp)              |

## Project Implementations
This project offers two distinct methods for performing image processing operations:

### PC-based (Read/Write from System)
*   **Workflow:**
    1.  An image file resides on your PC.
    2.  A Python script (e.g., `scripts/coe_generator.py`) converts this image into a .coe (Coefficient) file format.
    3.  A Verilog module reads this .coe file from the system.
    4.  The selected image processing operation is performed in Verilog.
    5.  The processed image data is written back to the PC as a new image file (e.g., .bmp).
*   **Details:** Verilog's built-in file I/O functions are used for reading the .coe file and writing the output image. It's crucial to understand the .bmp image structure for correct output.
*   **Location:** Relevant Verilog files and examples for this approach can be found in the `BIPT/` and `Blurring/` folders.

### FPGA-based (Live on Basys3 with VGA Display)
*   **Workflow:**
    1.  An image file resides on your PC.
    2.  Python scripts (e.g., `scripts/parallel_image_generator.py` and `scripts/kernel_coe_generator.py`) are used to prepare and convert this image into a .coe file.
    3.  The generated .coe file is manually loaded into the Block RAM (BRAM) of the Basys3 FPGA (typically using Vivado).
    4.  The Verilog design on the FPGA performs the selected image processing operation in real-time. Operations are often selected using physical switches or buttons on the Basys3 board.
    5.  The processed image is displayed live on a VGA monitor connected to the Basys3 board.
*   **Details:** This implementation provides a more interactive experience but is also more complex. It requires a Basys3 FPGA board, a VGA monitor, and is constrained by the available BRAM size on the FPGA, limiting the dimensions of processable images.
*   **Location:** Relevant Verilog files and examples for this approach are located in the `Final Project/VGA_1/` folder.

## Prerequisites
To use this toolbox, you will need:

*   **Software:**
    *   Xilinx Vivado Design Suite (used for Verilog development and FPGA implementation)
    *   Python (for .coe file generation from images)
        *   Common Python image processing libraries (e.g., Pillow/PIL) might be required for the Python scripts.
*   **Hardware (for FPGA-based implementation):**
    *   Basys3 FPGA board
    *   VGA Monitor

## Getting Started / Setup Instructions
1.  **Clone the repository:**
    ```bash
    git clone https://github.com/Gowtham1729/Image-Processing-Toolbox.git
    cd Image-Processing-Toolbox
    ```
2.  **Software Setup:**
    *   **Xilinx Vivado:** Ensure Vivado is installed and properly configured for the Basys3 board if you plan to use the FPGA-based implementation.
    *   **Python:** Ensure Python is installed. Install necessary libraries like Pillow for image manipulation:
        ```bash
        pip install opencv-python numpy
        ```

## Usage Instructions

### Python Utility Scripts
This project includes several Python scripts located in the `scripts/` directory. They are used for generating Xilinx COE files from images and for preparing images for processing. All scripts are now run from the command line with arguments specifying input and output paths.

*   **`scripts/parallel_image_generator.py`**:
    *   **Purpose**: Prepares an input image for kernel-based operations by generating multiple versions of it: the original image (named `gray.bmp` for compatibility, though it can be color) and 8 images shifted by one pixel in cardinal and diagonal directions (e.g., `up.bmp`, `left.bmp`, `leftup.bmp`, etc.). These 9 images are saved as BMP files.
    *   **Usage**: This script is a prerequisite for `scripts/kernel_coe_generator.py`.
    *   **Command-line example**:
        ```bash
        python scripts/parallel_image_generator.py <input_image_path.bmp_or_jpg> <output_directory_for_shifted_images>
        ```
        (Example: `python scripts/parallel_image_generator.py path/to/your/image.jpg path/to/shifted_output/`)

*   **`scripts/coe_generator.py`**:
    *   **Purpose**: Converts a single input image into a Xilinx COE (`.coe`) file where each pixel is represented as a 96-bit binary string. This format includes 72 bits of zero-padding followed by the 24-bit BGR (Blue, Green, Red) color data for the pixel. It's suitable for operations processing pixels individually.
    *   **Command-line example**:
        ```bash
        python scripts/coe_generator.py <input_image_path.bmp_or_jpg> <output_coe_path.coe>
        ```
        (Example: `python scripts/coe_generator.py path/to/your/image.jpg path/to/output/image.coe`)

*   **`scripts/kernel_coe_generator.py`**:
    *   **Purpose**: Generates a Xilinx COE file specifically for convolution-based operations. It combines data from the 9 images generated by `scripts/parallel_image_generator.py`. Each line in the output COE file is a 96-bit binary string:
        *   The first 72 bits are derived from the blue channels of the corresponding pixels in the 9 shifted/grayscale images.
        *   The next 24 bits are the BGR color data from the original (unshifted) color image.
    *   **Prerequisite**: Requires the 9 shifted/grayscale images previously generated by `scripts/parallel_image_generator.py`.
    *   **Command-line example**:
        ```bash
        python scripts/kernel_coe_generator.py <main_color_image_path.bmp_or_jpg> <directory_containing_shifted_images> <output_coe_path.coe>
        ```
        (Example: `python scripts/kernel_coe_generator.py path/to/your/original_color_image.jpg path/to/shifted_output/ path/to/output/kernel_image.coe`)

**General Python Script Usage:**
All scripts are executed from the terminal using Python 3. They now accept command-line arguments for input and output paths, providing flexibility in specifying files and locations. Ensure you have the necessary dependencies installed (e.g., `opencv-python`, `numpy`) as listed in the [Prerequisites](#prerequisites) and [Getting Started / Setup Instructions](#getting-started--setup-instructions) sections.

### PC-based (Read/Write from System)
Process images using Verilog simulations on your PC.

1.  **Prepare Images (if needed for kernel operations):**
    *   If you are testing convolution-based operations, first run `scripts/parallel_image_generator.py` to create the 9 shifted/grayscale versions of your test image.
        ```bash
        python scripts/parallel_image_generator.py path/to/your/test_image.bmp path/to/shifted_images_output_dir/
        ```
2.  **Generate .coe file:** Use the appropriate Python script from the `scripts/` directory.
    *   For basic operations (e.g., brightness, color inversion):
        ```bash
        python scripts/coe_generator.py path/to/your/test_image.bmp path/to/output.coe
        ```
    *   For convolution-based operations (e.g., blur, edge detection), use the output from `scripts/parallel_image_generator.py`:
        ```bash
        python scripts/kernel_coe_generator.py path/to/your/test_image.bmp path/to/shifted_images_output_dir/ path/to/kernel_output.coe
        ```
3.  **Configure Verilog:** Update file paths or parameters in the Verilog source files within the `BIPT/` (basic operations) or `Blurring/` (convolution operations) folders to point to your generated `.coe` file.
4.  **Simulate:** Use Xilinx Vivado (or another Verilog simulator) to run the design. Testbenches will read the `.coe` file, process data, and write the output to a new image file (often `.bmp`) on your PC.

### FPGA-based Implementation
Run image processing operations directly on the Basys3 FPGA, with output to a VGA monitor.

1.  **Prepare images for kernel operations:**
    *   Run `scripts/parallel_image_generator.py` to generate the 9 shifted/grayscale versions of your input image.
        ```bash
        # Example:
        python scripts/parallel_image_generator.py path/to/your_input_image.png path/to/output_shifted_images_directory/
        ```
2.  **Generate the final .coe file for FPGA:**
    *   Run `scripts/kernel_coe_generator.py`. This script takes your original color input image and the directory of shifted images (generated in the previous step) to produce the `.coe` file.
        ```bash
        # Example:
        python scripts/kernel_coe_generator.py path/to/your_input_image.png path/to/output_shifted_images_directory/ path/to/final_fpga_image.coe
        ```
    *   The output `.coe` file from this step is what you'll load into the FPGA's Block RAM.
3.  **Load .coe into Block RAM:** In your Vivado project for the `Final Project/VGA_1/` design, manually initialize the Block RAM (BRAM) with the generated `.coe` file's contents. This is typically done via the Vivado GUI by associating the `.coe` file with the BRAM IP core.
4.  **Synthesize, Implement, and Program:**
    *   Execute synthesis and implementation for the Verilog design in Vivado.
    *   Generate the bitstream file.
    *   Program the Basys3 FPGA with this bitstream.
4.  **Operate:** Use the physical switches/keys on the Basys3 board to choose the desired image processing function.
5.  **View Output:** The processed image is displayed in real-time on the connected VGA monitor.

## Directory Structure Overview
*   **`BIPT/`**: Verilog modules for PC-based simulation of basic image processing operations (e.g., brightness, grayscale).
*   **`Blurring/`**: Verilog modules for PC-based simulation of convolution-based operations (e.g., blur filters).
*   **`Final Project/`**: The complete Verilog project for Basys3 FPGA implementation, including VGA output and real-time operation selection.
    *   **`Final Project/VGA_1/`**: Contains the specific VGA controller and top-level module for FPGA.
*   **`images/`**: Sample input images and example output images referenced in this README.
*   **`scripts/`**: Contains Python utility scripts:
    *   `coe_generator.py`: Converts a single image to a standard COE file.
    *   `kernel_coe_generator.py`: Generates a COE file for kernel-based operations using a main image and 9 pre-shifted neighbor images.
    *   `parallel_image_generator.py`: Generates the 9 pre-shifted neighbor images required by `kernel_coe_generator.py` from a single input image.
*   **`tests/`**: Contains unit tests for the Python scripts, ensuring their functionality and correctness.

## Technical Details
This section briefly overviews key technical components.

### Block Memory (BRAM)
The FPGA's Block RAM stores image data in binary format (from a `.coe` file). Python scripts convert images into this format, where each line typically represents pixel data. For convolution operations needing simultaneous access to multiple pixels (e.g., a 3x3 kernel), the Python scripts structure the `.coe` file to group necessary neighboring pixel data. This allows Verilog modules to efficiently access required BRAM data.

### VGA Interface
A Verilog-implemented VGA controller module displays the processed image on a standard VGA monitor. It generates horizontal sync (hsync) and vertical sync (vsync) signals, plus RGB color data, typically for a 480p (640x480 pixels) resolution at 60Hz. The controller reads pixel data from BRAM and translates it into analog signals for the VGA standard.

### COE (Coefficient) File Format
A `.coe` file is a Xilinx-specific ASCII text file for initializing Block RAMs or ROMs in FPGA designs. It usually includes a header specifying the data's radix (binary or hexadecimal), followed by a vector of data values. In this project, these values represent image pixel data.
For more details, see the [COE File Syntax](https://docs.amd.com/r/en-US/ug896-vivado-ip/COE-File-Syntax) in the AMD/Xilinx documentation.

## Contributing
Contributions are welcome! If you have improvements or bug fixes, please fork the repository, make your changes, and submit a pull request.

## License
This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for full details.

---
If you find this repository helpful, please consider giving it a star on GitHub! ⭐
