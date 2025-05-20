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

| Operation                       | Image                                                                                                                 |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| RGB2Gray (0000)                 | ![RGB2Gray](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/1.RGB2Gray.bmp)               |
| Increase brightness (0001)      | ![Increase Brightness](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/2.I_brightness.bmp) |
| Decrease brightness (0010)      | ![Decrease Brightness](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/3.D_brightness.bmp) |
| Color Inversion (0011)          | ![Color Inversion](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/4.Invert.bmp)          |
| Red Filter (0100)               | ![Red Filter](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/5.Red_filter.bmp)           |
| Blue Filter (0101)              | ![Blue Filter](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/7.Blue_filter.bmp)         |
| Green Filter (0110)             | ![Green Filter](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/6.Green_filter.bmp)       |
| Original Image (0111)           | ![Original Image](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/8.Original.bmp)         |
| Average Blurring (1000)         | ![Average Blurring](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/blur.bmp)            |
| Sobel Edge Detection (1001)     | ![Sobel Edge Detection](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/sobel_edge.bmp)   |
| Edge Detection (1010)           | ![Edge Detection](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/outline.bmp)           |
| Motion Blurring xy (1011)       | ![Motion Blurring xy](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/motion_blur.bmp)    |
| Emboss (1100)                   | ![Emboss](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/embos.bmp)                     |
| Sharpen (1101)                  | ![Sharpen](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/sharpen.bmp)                  |
| Motion Blur in x direction (1110) | ![Motion Blur in x direction](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/motion_blur.bmp) |
| Gaussian Blur (1111)            | ![Gaussian Blur](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/blur.bmp)              |

## Project Implementations
This project offers two distinct methods for performing image processing operations:

### PC-based (Read/Write from System)
*   **Workflow:**
    1.  An image file resides on your PC.
    2.  A Python script (e.g., `coe_generator.py`) converts this image into a .coe (Coefficient) file format.
    3.  A Verilog module reads this .coe file from the system.
    4.  The selected image processing operation is performed in Verilog.
    5.  The processed image data is written back to the PC as a new image file (e.g., .bmp).
*   **Details:** Verilog's built-in file I/O functions are used for reading the .coe file and writing the output image. It's crucial to understand the .bmp image structure for correct output.
*   **Location:** Relevant Verilog files and examples for this approach can be found in the `BIPT/` and `Blurring/` folders.

### FPGA-based (Live on Basys3 with VGA Display)
*   **Workflow:**
    1.  An image file resides on your PC.
    2.  A Python script converts this image into a .coe file.
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

### Python Scripts for .coe Generation
Several Python scripts convert input images into the `.coe` (Coefficient) file format, which Verilog modules use.

*   **`coe_generator.py`**: For basic image processing. Converts an image into a list of binary numbers (pixel color values). Suitable for operations processing pixels individually (e.g., brightness adjustment, color inversion).
*   **`kernel_coe_generator.py`**: For convolution-based operations (e.g., blurring, edge detection). Converts an image to grayscale and arranges pixel data so neighboring pixels needed for kernel application are grouped in the `.coe` file.
*   **`parallel_image_generator.py`**: For the final FPGA project. Combines the output of `kernel_coe_generator.py` (grayscale, kernel-formatted) with original color pixel values into a single `.coe` file. This enables the FPGA design to perform both operation types.

**General Python Script Usage:**
Execute scripts from your terminal, providing the input image path. They typically output a `.coe` file.
*Note: The Python scripts (e.g., `coe_generator.py`) currently use hardcoded input and output file paths within the script itself. You will need to modify these paths directly in the Python files to process your specific images and define output locations. Future enhancements could involve adding command-line argument support to these scripts.*

### PC-based (Read/Write from System)
Process images using Verilog simulations on your PC.

1.  **Generate .coe file:** Use the appropriate Python script (e.g., `coe_generator.py` for basic operations, or `kernel_coe_generator.py` for specific kernel tests) to convert your image.
2.  **Configure Verilog:** Update file paths or parameters in the Verilog source files within the `BIPT/` (basic operations) or `Blurring/` (convolution operations) folders to point to your generated `.coe` file.
3.  **Simulate:** Use Xilinx Vivado (or another Verilog simulator) to run the design. Testbenches will read the `.coe` file, process data, and write the output to a new image file (often `.bmp`) on your PC.

### FPGA-based Implementation
Run image processing operations directly on the Basys3 FPGA, with output to a VGA monitor.

1.  **Generate combined .coe file:**
    *   Run `kernel_coe_generator.py` with your input image.
    *   Then, run `parallel_image_generator.py` using the output from the previous step and the original image to create the final `.coe` file for the FPGA.
2.  **Load .coe into Block RAM:** In your Vivado project for the `Final Project/VGA_1/` design, manually initialize the Block RAM (BRAM) with the generated `.coe` file's contents. This is typically done via the Vivado GUI by associating the `.coe` file with the BRAM IP core.
3.  **Synthesize, Implement, and Program:**
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
*   **`*.py` (root directory)**: Python scripts for converting images to `.coe` files (e.g., `coe_generator.py`, `kernel_coe_generator.py`, `parallel_image_generator.py`).

## Technical Details
This section briefly overviews key technical components.

### Block Memory (BRAM)
The FPGA's Block RAM stores image data in binary format (from a `.coe` file). Python scripts convert images into this format, where each line typically represents pixel data. For convolution operations needing simultaneous access to multiple pixels (e.g., a 3x3 kernel), the Python scripts structure the `.coe` file to group necessary neighboring pixel data. This allows Verilog modules to efficiently access required BRAM data.

### VGA Interface
A Verilog-implemented VGA controller module displays the processed image on a standard VGA monitor. It generates horizontal sync (hsync) and vertical sync (vsync) signals, plus RGB color data, typically for a 480p (640x480 pixels) resolution at 60Hz. The controller reads pixel data from BRAM and translates it into analog signals for the VGA standard.

### COE (Coefficient) File Format
A `.coe` file is a Xilinx-specific ASCII text file for initializing Block RAMs or ROMs in FPGA designs. It usually includes a header specifying the data's radix (binary or hexadecimal), followed by a vector of data values. In this project, these values represent image pixel data.
For more details, see the [COE File Syntax](https://www.xilinx.com/support/documentation/sw_manuals/xilinx11/cgn_r_coe_file_syntax.htm) in the Xilinx documentation.

## Contributing
Contributions are welcome! If you have improvements or bug fixes, please fork the repository, make your changes, and submit a pull request.

## License
This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for full details.

---
If you find this repository helpful, please consider giving it a star on GitHub! ⭐
