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


## Development

It seems to me that the project structure is very unclear. So, I included this section for the development of this project.
This project contains two implementations of the same image processing operations.
1. Read and Write from PC.
``` image(located somewhere in your pc) -----> coe file generated from python ------> read coe file using verilog read function ------> do the required operations ------> Write the new image somewhere in your pc```


    **Note**: There are functions for reading and writing a file in verilog. Remember to convert the image into coe file but you can write the image in bmp format. Learn how a .bmp image file is structured. Folders BIPT and BLurring contains this implementation.

2. load the image into the board and display it on a monitor.
```image(located somewhere in your pc) -----> coe file generated from python ------> load this coe file manually into the block-ram of the board ------> do the required operations by selecting seleting assigned keys on board  ------> View the changes in the image in realtime on monitor```

    **Note**:This is little complicated than the above implementation because we need a board, monitor and the ram size is limited. You can find this implementaion in Final Project/VGA_1 folder. Also remember that your board has a limited size, so you can only use images of very small size. Adjust according to your board size.

**COE file**: 
This is nothing but a list of binary or hexadecimal numbers ordered in a specific format. Refer https://www.xilinx.com/support/documentation/sw_manuals/xilinx11/cgn_r_coe_file_syntax.htm for more info.

We need to convert our image into a list of binary numbers where each binary number denotes a pixel value of the image. You can generate this using coe_generator.py file. You can do basic image operations such as increasing/decreasing brightness, RGB2Gray, colour inversions, various color filters using the generated file. Inorder to perform these basic image processing operations we just need to access to a single pixel at a time. For example, we can convert color image to black and white by the operation r+g+b/3 to that pixel. Hence, we read a single pixel at a time(clock cycle) to do the operation and show the result on the screen or store the image in the computer. 
You cannot do any kinds of blurring or edge detection using the file generated from coe_generator.py file because we need access to the pixels around that pixel to generate a result.

Inorder to apply blurring, edge detection and other filter we need to apply a convolution on the image using various kernels. https://www.wikiwand.com/en/Kernel_(image_processing) As you can see from the website we need access to the pixels around the pixel we are operating. Since, I didn't find a way to access multiple parts of the block memory in a single clock cycle. Grayscale image is enough for applying these kernels/filters.
So, I used python converted the image to grayscale and placed all the required pixels(up, down, right etc., pixel values around a pixel) for performing a kernel operations in a single line(as a single big binary number). I don't think this is an efficeint method because it consumes more memory than the single grayscale image.

This is just a workaround since I couldn't find other way at that time.
Now you can perform all the blurring operations by using this file.

But my final project should be able to perform both the basic operations and also convolutions. So, I had to generate a new coe file which consists of the colored pixel value in the first half which is follwed by grayscale pixel value of the surrounding pixels.
Run kernel_coe_generator.py and then parallel_image_generator.py to get final coe file.

Please use the python files according to your use case and try to write your own files for generating coe files using python or any other programming language of your choice. Verilog code of the final project https://github.com/Gowtham1729/Image-Processing/blob/master/Final%20Project/VGA_1/VGA_1.srcs/sources_1/new/VGA.v

//sel_module is used for selecting the function and val to adjust brightness, filters etc.,
## Module Selection Bits

1. **RGB2Gray(0000)**: 

![RGB2Gray](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/1.RGB2Gray.bmp).

2. **Increase brightness(0001)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/2.I_brightness.bmp)


3. **Decrerase brightness(0010)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/3.D_brightness.bmp)

4. **Color Inversion(0011)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/4.Invert.bmp)

5. **Red Filter(0100)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/5.Red_filter.bmp)

6. **Blue Filter(0101)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/6.Green_filter.bmp)

7. **Green Filter(0110)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/7.Blue_filter.bmp)

8. **Original Image(0111)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/8.Original.bmp)

9. **Average Blurring(1000)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/blur.bmp)

10. **Sobel Edge Detection(1001)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/sobel_edge.bmp)

11. **Edge Detection(1010)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/outline.bmp)

12. **Motion Blurring	xy(1011)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/motion_blur.bmp)

13. **Emboss(1100)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/embos.bmp)

14. **Sharpen(1101)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/sharpen.bmp)

15. **Motion Blur in x direction(1110):

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/motion_blur.bmp)

16. **Gaussian Blur(1111)**:

![](https://github.com/Gowtham1729/Image-Processing-Toolbox/blob/master/images/blur.bmp)


Please star the repo :)
