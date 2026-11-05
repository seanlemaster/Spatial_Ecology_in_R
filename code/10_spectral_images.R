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
