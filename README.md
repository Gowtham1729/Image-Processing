# Image-Processing-Toolbox
(ES 203: Digital Systems Project, Prof. Joycee Mekie, IITGN)

## Introduction
The Image Processing Toolbox is a Verilog-based implementation designed for the Basys3 FPGA. This project facilitates various image processing operations, specifically convolution-based techniques, on a given input image. The image is sent to the FPGA Block RAM in binary format, where selected image processing operations are performed according to the user's choice. The processed image is then displayed via a VGA display. The hardware description language used for this project is Verilog, while Python is employed to convert digital images into binary form. The Vivado software suite was utilized for development.

## Block Memory
The Block Memory module serves as a storage component for the image data in binary format (i.e., a .coe file) within the Verilog project. To convert the image into this binary format, we utilize a Python script. The converted image has a number of rows equal to the total number of pixels, and each row contains 24 bits (8 bits for each color channel). For instance, a 160x115 pixel image would have 18,400 rows.

In the project, a Block Memory module is created with as many addresses as the number of rows and 24 data bits. For the example mentioned above, the module would have 2^15 address bits. This memory module can then be instantiated and used in the main module.


The Block Memory module includes inputs such as clock, address, data-in, and read-write command, as well as a data-out output.
 For a given address, the module provides the data at that address during the corresponding clock cycle. As a result, only one data set (i.e., one pixel) can be accessed at a time.
For convolution operations, multiple pixels are needed simultaneously to apply the kernel. These pixels can be accessed by adding and subtracting values from the address accordingly.



## VGA Interface
The VGA interface code was developed for a 480p display with a 60Hz refresh rate. The refresh rate refers to the number of times the screen refreshes per second. For each refresh, each pixel (480x640) is updated sequentially. To accomplish this, a counter starts at the origin (0,0) and moves to (0, 799) and so forth until it reaches (524, 799). This process includes both the non-display area and the retrace, as depicted in the accompanying figures.

The hsync signal transitions to "0" when the counter reaches the end of the right border, triggering the retrace. After the retrace, the signal returns to "1", initiating the left border and scanning the display area.

For the screen display, the image is only shown starting from a specific point and ending at the sum of that point and the number of pixels in both horizontal and vertical directions.

Please refer to the project poster for additional information. This project comprises two separate implementations:

1. Verilog Implementation: This version can read, process, and write images from your system. You can find the relevant files in the "BIPT" and "Blurring" folders.
2. FPGA Implementation: This version demonstrates the output of the image loaded into the block RAM on a monitor. The necessary files are located in the "Final Project" folder.

## COE (Coefficient) File: 
A COE file is essentially a list of binary or hexadecimal numbers ordered in a specific format. It is commonly used to initialize block RAMs or ROMs in Xilinx FPGA designs. For more information on the syntax and structure of COE files, refer to the Xilinx documentation: [COE File Syntax](https://www.xilinx.com/support/documentation/sw_manuals/xilinx11/cgn_r_coe_file_syntax.htm).


## Development

The project structure has been updated for clarity, with two distinct implementations of the same image processing operations:

1. **Read and Write from PC:**
```
image (located on your PC) 
-----> .coe file generated from Python 
-----> read .coe file using Verilog read function 
-----> perform required operations 
-----> write the new image to your PC
```
**Note**: Verilog includes functions for reading and writing files. Remember to convert the image into a .coe file, but the output image can be written in .bmp format. It is essential to understand the structure of a .bmp image file. You can find this implementation in the "BIPT" and "Blurring" folders.

2. **Load the image onto the board and display it on a monitor:**
```
image (located on your PC) 
-----> .coe file generated from Python 
-----> manually load the .coe file into the board's block RAM 
-----> perform required operations by selecting assigned keys on the board
-----> view the changes in the image in real-time on the monitor
```
**Note**: This implementation is more complex than the first because it requires a board, monitor, and has limited RAM size. You can find this implementation in the "Final Project/VGA_1" folder. Keep in mind that your board has limited memory, so you can only use small-sized images. Adjust the image size according to your board's capacity.


To perform basic image processing operations, you need to convert the image into a list of binary numbers, where each binary number represents a pixel value of the image. You can generate this list using the coe_generator.py file. This allows you to execute basic operations such as increasing/decreasing brightness, RGB2Gray conversion, color inversions, and applying various color filters. To perform these operations, you only need access to a single pixel at a time. For instance, converting a color image to black and white can be done by applying the formula (r+g+b)/3 to each pixel. Therefore, you can read a single pixel at a time (one per clock cycle), perform the operation, and either display the result on the screen or store the image on the computer.

However, the file generated from coe_generator.py is not suitable for tasks such as blurring or edge detection, as these operations require convolution with various kernels. To apply these kernels/filters, you need access to neighboring pixels around the target pixel. Since it's challenging to access multiple parts of block memory in a single clock cycle, a different approach is needed.

To work around this limitation, you can use Python to convert the image to grayscale and arrange all the required pixels (up, down, right, etc., pixel values around a pixel) for performing kernel operations in a single line (as a single large binary number). This method is not the most efficient, as it consumes more memory than a single grayscale image. However, it enables the application of kernels/filters such as blurring and edge detection.

The method described earlier, involving the conversion of an image to grayscale and organizing the necessary neighboring pixels in a single line (as a single large binary number), serves as a workaround to perform blurring and other convolution-based operations. Although it may not be the most efficient solution, it enables you to apply various kernels/filters, such as blurring and edge detection, which would otherwise be challenging due to limitations in accessing multiple parts of block memory in a single clock cycle.

To create a final project that supports both basic operations and convolution-based operations, you will need to generate a new .coe file containing both color pixel values and grayscale pixel values of the surrounding pixels. This can be achieved by running two Python scripts sequentially:

1. Run `kernel_coe_generator.py` to create a .coe file with the grayscale pixel values of the surrounding pixels, which will be used for convolution-based operations.
2. Run `parallel_image_generator.py` to combine the colored pixel values with the grayscale pixel values generated in the previous step into a single .coe file.

By using this combined .coe file, your final project will be able to perform both basic image processing operations and convolution-based operations such as blurring and edge detection.

Depending on your specific requirements, you can use the provided Python scripts or create your own to generate .coe files for image processing operations. Feel free to modify the existing Python files or write new ones in Python or any other programming language of your choice to suit your needs.

To access the Verilog code for the final project, visit the following GitHub repository: [Image-Processing/Final Project/VGA_1/VGA.v](https://github.com/Gowtham1729/Image-Processing/blob/master/Final%20Project/VGA_1/VGA_1.srcs/sources_1/new/VGA.v)

By customizing the .coe file generation process and utilizing the provided Verilog code, you can build a comprehensive image processing solution that supports basic operations as well as convolution-based operations.

The `sel_module` is used for selecting the desired image processing function, and the `val` parameter is used to adjust brightness, filters, etc. Below is a list of available functions and their corresponding module selection bits:

1. **RGB2Gray (0000)**: 

![RGB2Gray](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/1.RGB2Gray.bmp).

2. **Increase brightness (0001)**:

![Increase Brightness](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/2.I_brightness.bmp)

3. **Decrease brightness (0010)**:

![Decrease Brightness](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/3.D_brightness.bmp)

4. **Color Inversion (0011)**:

![Color Inversion](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/4.Invert.bmp)

5. **Red Filter (0100)**:

![Red Filter](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/5.Red_filter.bmp)

6. **Blue Filter (0101)**:

![Blue Filter](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/6.Green_filter.bmp)

7. **Green Filter (0110)**:

![Green Filter](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/7.Blue_filter.bmp)

8. **Original Image (0111)**:

![Original Image](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/8.Original.bmp)

9. **Average Blurring (1000)**:

![Average Blurring](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/blur.bmp)

10. **Sobel Edge Detection (1001)**:

![Sobel Edge Detection](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/sobel_edge.bmp)

11. **Edge Detection (1010)**:

![Edge Detection](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/outline.bmp)

12. **Motion Blurring xy (1011)**:

![Motion Blurring xy](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/motion_blur.bmp)

13. **Emboss (1100)**:

![Emboss](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/embos.bmp)

14. **Sharpen (1101)**:

![Sharpen](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/sharpen.bmp)

15. **Motion Blur in x direction (1110)**:

![Motion Blur in x direction](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/motion_blur.bmp)

16. **Gaussian Blur (1111)**:

![Gaussian Blur](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/blur.bmp)

If you find this repository helpful, please consider giving it a star on GitHub :)
