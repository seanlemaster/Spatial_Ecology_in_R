# Code to estimate spatial variability of an image.

library(terra)
library(imageRy)
library(viridis)

#Listing tyhe different available datasets in imagery 
im.list()

# import data
sent <- im.import("sentinel.png")

#layer 1: NIR
#2: red
#3: green

# Exercise: plot in RGB the image putting NIR ontop of the green component 
im.plotRGB(sent, 2, 1, 3)

#Exercise: make the same plot with the terra:plotRGB function 
plotRGB(sent, 2, 1, 3, stretch="lin")

# Measuring the mean: univariate stats
meanNIR <- focal(sent[[1]], w=3, fun="mean")  #the average in a moving window of 3x3 pixels. ok so we are grouping the values in 3x3 pixels into a single larger pixel with the avergae value. 
plot(meanNIR)

# Exercise: plot the original NIR band beside the meanNIR
im.multiframe(1,2)
plot(sent[[1]])
plot(meanNIR)

# Exercise: calculate the mean of the NIR with a moving window of 7x7 pixels.
meanNIR7 <- focal(sent[[1]], w=7, fun="mean")

# Exercise make a stack of all 3
im.multiframe(1,3)
plot(sent[[1]])
plot(meanNIR)
plot(meanNIR7)

# another way to do it
stackNIR <- c(sent[[1]], meanNIR, meanNIR7)
plot(stackNIR)

# Again with 13x13, use inferno legeltn
meanNIR13 <- focal(sent[[1]], w=13, fun="mean")

stackNIR <- c(sent[[1]], meanNIR, meanNIR7, meanNIR13)
plot(stackNIR, col=inferno(100))
