# -*- coding: utf-8 -*-
"""
Created on Tue Nov 13 23:36:04 2018

@author: Gowtham
"""

import cv2
gray = cv2.imread("gray.bmp")
left = cv2.imread("left.bmp")
right = cv2.imread("right.bmp")
up = cv2.imread("up.bmp")
down = cv2.imread("down.bmp")
leftup = cv2.imread("leftup.bmp")
leftdown = cv2.imread("leftdown.bmp")
rightup = cv2.imread("rightup.bmp")
rightdown = cv2.imread("rightdown.bmp")
img = cv2.imread("flower.jpg")

coe = open("image.coe", "w")

coe.write("memory_initialization_radix=2;\nmemory_initialization_vector=\n")


lst = ["gray", "left", "right", "up", "down", "leftup", "leftdown", "rightup", "rightdown"]
st = ""


for i in range(gray.shape[0]):
    for j in range(gray.shape[1]):
        for k in lst:
            bi = ""
            string = "bi = bin(" + k + "[i][j][0])[2:]"
            exec(string)
            for l in range(8-len(bi)):
                bi = '0' + bi
            st = st + bi
        coe.write(st)
        x = ""
        for l in img[i][j]:
            bil = bin(l)[2:]
            for m in range(8-len(bil)):
                bil = '0' + bil
            x = x + bil
        coe.write(x + ',\n')
        st = ""
        

"""for i in image:
    for j in i:
        x = ""
        for k in j:
            flag += 1
            #print(flag)
            bi = bin(k)[2:]
            for i in range(8-len(bi)):
                bi = '0' + bi
            x = x+bi
        x = x*4
        coe.write(x +  ',\n')"""


coe.close()