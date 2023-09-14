# -*- coding: utf-8 -*-
"""
Created on Thu Oct 25 23:08:57 2018

@author: Gowtham
"""
from typing import Union
import os
import cv2


def convert_to_8bit_binary(number):
    """Converts a number into its 8-bit binary representation."""
    binary_representation = bin(number)[2:]  # Convert to binary and remove the "0b" prefix
    padded_binary = binary_representation.zfill(8)  # Pad with zeros to ensure 8 bits
    return padded_binary


def main(image_path: Union[str, bytes, os.PathLike], coe_write_path: Union[str, bytes, os.PathLike]) -> None:
    image = cv2.imread(image_path)
    
    # to display image
    #cv2.imshow('image',image)
    #cv2.waitKey(0)
    #cv2.destroyAllWindows()

    with open(coe_write_path, "w") as coe:
        
        # Write the header information for the .coe file
        coe.write("memory_initialization_radix=2;\n")
        coe.write("memory_initialization_vector=\n")
        
        for row in image:
            for pixel in row:
                binary_pixel = ''.join([convert_to_8bit_binary(channel_value) for channel_value in pixel])
                padded_binary_pixel = '0' * 72 + binary_pixel
                coe.write(padded_binary_pixel + ',\n')


if __name__ == "__main__":
    main("flower.jpg", "flower_image.coe")