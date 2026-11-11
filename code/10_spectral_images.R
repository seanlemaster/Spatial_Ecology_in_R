# Code to develop spectral images

library(terra)
library(imageRy)
library(viridis)

listing the data
im.list()

m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m1992

# layers of m1992
# layer 1 = NIR
# layer 2 = red
# layer 3 - green

# Exercise: put the NIR infrared in a im.plotRGB in the green component 
im.plotRGB(m1992, r=3, g=1, b=2, title="False colors image") 

# Exercise: make a multi-frame with the NIR ontop of the red component onn top of the green component 
im.multiframe(2,1)
im.plotRGB(m1992, r=1, g=3, b=2, title="False colors image") 
im.plotRGB(m1992, r=3, g=1, b=2, title="False colors image") 

# include blue
im.multiframe(1,3)
im.plotRGB(m1992, r=1, g=3, b=2, title="False colors image") 
im.plotRGB(m1992, r=3, g=1, b=2, title="False colors image") 
im.plotRGB(m1992, r=3, g=2, b=1, title="False colors image") 

# Calculating DVI in 1992
# NIR layer 1
# red layer 2

nir1992 <- m1992[[1]]
red1992 <- m1992[[2]]
dvi1992 = nir1992 - red1992

plot(dvi1992, col=rocket(100))

# Plotting a single layer
plot(m1992[[1]])
# Why the image is ranging fromn 0 to 255?
# See the "reflectance" presentation in Virtuale.
#8  bits = 2^8 = 256 (range: 0-255)
# This is called radiometric resolution

#Types of resolution:
#Spatial: dimension of the pixel
#Spectral: number of bands 
#Temporal: numer of images in time
#Radiometric: number of bits 

#import the recent image. 
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

# Excersie: make a multiframe with the two images in RGB:
# putting the NIR onop of the green component 
#NIR, then red, then green
im.multiframe(1,2)
im.plotRGB(m1992, r=2, g=1, b=2, title="False colors image") 
im.plotRGB(m2006, r=2, g=1, b=2, title="False colors image") 

# Then putting NIR in blue: helps to look at soil
im.multiframe(1,2)
im.plotRGB(m1992, r=2, g=3, b=1, title="False colors image") 
im.plotRGB(m2006, r=2, g=3, b=1, title="False colors image") 

# DVI of 2006
nir2006<- m2006[[1]]
red2006 <- m2006[[2]]
dvi2006 = nir2006 - red2006

plot(dvi2006, col=inferno(100))

# Exercise: make a multiframe in which you will put the dvi1992 beside the dvi2006
im.multiframe(1,2)
plot(dvi1992, col=inferno(100), main="DVI 1992")
plot(dvi2006, col=inferno(100), main="DVI 2006")

# DVI with different number of bits (different radiometric resolution)
# 8 bits
# range of DVI
# maximum
# NIR = 255, Red =0, DVI = 255
#minimum
#NIR = 0 , Red = 255, DVI = -255
#Range of DVI in 8 bits: -255, 255

# 4 bits is : -15, 15

#NDVI = (NIR -RED) / (NIR + RED)
# 8 bits
# range NDVI 8 bit: -1, 1

# Ecercise: calculate the range of NDVI with a 3 bits image
#maximum
#NDVI = (7-0) / (7+0) = 1
#minimum
#NDVI = (0-7) / (0+7) = -1
#Range: -1, 1

# NDVI
ndvi1992 = dvi1992 / (nir1992 + red1992)
plot(ndvi1992, col=inferno(100))

# Simple way to calculate NDVI
ndvi2006 <-im.ndvi(m1992, 1, 2)
