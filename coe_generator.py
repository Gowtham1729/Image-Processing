# -*- coding: utf-8 -*-
"""
Created on Thu Oct 25 23:08:57 2018

@author: Gowtham
"""

import cv2
image = cv2.imread("flower.jpg")
#cv2.imshow('image',image)
#cv2.waitKey(0)
#cv2.destroyAllWindows()

coe = open("imgx.coe", "w")

#gray = cv2.imread('flower.jpg', 0)
#cv2.imwrite('gray.bmp', gray)

coe.write("memory_initialization_radix=2;\nmemory_initialization_vector=\n")

flag = 0
siz = image.size
for i in image:
    for j in i:
        x = ""
        for k in j:
            flag += 1
            #print(flag)
            bi = bin(k)[2:]
            for i in range(8-len(bi)):
                bi = '0' + bi
            x = x+bi
        x = ("0"*72)+x
        coe.write(x +  ',\n')

coe.close()