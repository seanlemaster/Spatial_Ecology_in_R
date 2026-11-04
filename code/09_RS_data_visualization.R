# code for visualizing remote sensing data

library(terra)
library(imageRy)
library(viridis)

# checking the data 
im.list()

# importing one layer of a satellite image which is called "band"

b2 <- im.import("sentinel.dolomites.b2.tif")
plot(b2)

# Change the pallate 
plot(b2, col=inferno(100))

# Exercise: import the green band of sentinel and plot it with the magma legend 

b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=magma(100))

# Create a multi-frame 
im.multiframe(2,1)
plot(b2, col=inferno(100))
plot(b3, col=mako(100))

#import the red band
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cividis(100))

# Exercise: import the near infared band
b8 <- im.import("sentinel.dolomites.b8.tif")
plot(b8, col=cividis(100))

#build a 4x4 multiframe and plot all of the bands with default pallete
im.multiframe(2,2)
plot(b2)
plot(b3)
plot(b4)
plot(b8)

#multiframe and colorRamp Palette 
clb <- colorRampPalette(c("blue4", "blue1", "cadetblue1"))(100)
plot(b2, col=clb)

# Same for green
clg <- colorRampPalette(c("darkolivegreen", "chartreuse3", "chartreuse"))(100)
plot(b3, col=clg)

#Same for red 
clr <- colorRampPalette(c("firebrick4", "firebrick3", "firebrick1"))(100)
plot(b4, col=clr)

# for near-infared
cln <- colorRampPalette(c("magenta", "green", "yellow"))(100)
plot(b8, col=cln)

# Exercise: create a stack of all the bands togehter with a new object called sent considering 
sent <- c(b2, b3, b4, b8)
plot(sent, col = magma(200))

# You can also reverse the colors
plot(sent, col=magma(100, direction=-1))

# stack by the imageRy package:
sentinel <- im.import("sentinel.dolomites")

# Exercise: starting from the stack called sentinel plot only the nir band
#original b2= layer 1 in the stack
#original b3= layer 2 in the stack
#original b4= layer 3 in the stack
#original b8= layer 4 in the stack
plot(sentinel[[4]])
