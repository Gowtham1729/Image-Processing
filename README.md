# Image-Processing-Toolbox
(ES 203: Digital Systems Project, Prof. Joycee Mekie, IITGN)

# Introduction
Image Processing Toolbox in Verilog using Basys3 FPGA
In this project, we have implemented image processing operations
(those involving convolutions) on a given image through FPGA
Basys-3. We send a given image in binary form to the FPGA Block
RAM and then perform some specific image processing applications
depending user’s choice in the FPGA itself and then display it through
a VGA display. We use Verilog as the hardware description language
and python for converting the given digital image into binary form.

# Block Memory
To feed the image into verilog, we need to convert it binary (.coe file).
We do that using python. The converted image is such that it has as
many rows as the total number of pixel and each row having 24 bit
(8X3). So a 160X115p image will have 18400 rows.
Then a block Memory Module is created in the project which has as
many addresses as the number of rows and 24 data bits. So, for the
above example, it will have 215 address bits.
This Memory module, like other modules can be instantiated and used
in the main module. The module has inputs as clock, address,datain
and read-write command and the dataout as output. So, for a given
address, it gives the daa at that address during that clock cycle. And
thus can give only one data set at a time (here one pixel).
For convolutions, we need multiple pixels at a time to use the
kernels, that we access by adding and subtracting values to the
address.



# VGA Interface
We wrote the code for 480p
display set at 60Hz refresh rate.
Refresh rate is the number of
times the screen refreshes in a
second. For each refresh, each
pixel (480X640) is refreshed one
after another. For this, the
counter starts from the origin
(0,0) and travels to (0, 799) and so
on till (524, 799). These include
the non display area as well along
with the retrace as shown on the
figures on the left. These are fed
to the screen using hsync and
vsync.
The hsync signal becomes “0”
after the counter reaches the end
of the right border which initiates
the retrace. After the retrace, the
the signal once, once again
becomes “1”, initiating the left
border and tracing on the display
area.
Also, for the screen, we only start
the display from some point and
end at the number of pixels added
to that in both the directions.

Download the poster for further details. This project contains 2 implementations:
1. Verilog implementation which can read, process and write images from your system.(BIPT and Blurring Folder)
2. FPGA implementation which can show the output of the image loaded in block ram on a monitor.(Final Project Folder)

//
# Module Selection Bits

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

####################    Please feel free to ask any question, issues or doubts in issuesor contact me  ##############################
contact: chitipolu.gowtham@iitgn.ac.in
