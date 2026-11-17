# R code for developiong ecosystem monitoring in different times.

library(terra)
library(patchwork)
library(imageRy)
library(viridis)

im.list()

# european nitrogen
EN01 <- im.import("EN_01.png")
EN01 <- flip(EN01)
plot(EN01)

# Import the final image 
EN13 <- im.import("EN_13.png")
plot(EN13)

# plotting the two situations one on top of each other
p1 <- im.ggplot(EN01[[1]])
p2 <- im.ggplot(EN13[[1]])

p1 / p2

# Differencing images
diffEN <- EN01[[1]] - EN13[[1]]
diffEN # shows the 
plot(diffEN)

# plotting everything together
p3 <- im.ggplot(diffEN)
p1 + p2 + p3

#---------------------------------

# Time series analysis with several images at a time 
ndvi <- im.import("NDVI_2020")  # wow this opens all of them together in a stack 

# Ridgeline plaots
names(ndvi) <- c("02_feb", "05_may", "08_aug", "11_nov") #gotta assign names first 
im.ridgeline(ndvi, scale=1)

# Changing the colors 
im.ridgeline(ndvi, palette="magma")

# Changing direction of the colors 
im.ridgeline(ndvi, palette="magma", direction=-1)


#-------------------------------

#Ice melt in Greenland 

#Import the greenland data together as a stack
gr <- im.import("greenland")

# plotting onlt he temp of 2000 with the inferno legend 
plot(gr[[1]], col=inferno(100))

# Difference between 2000 and 2015
dif <- gr[[1]] - gr[[4]]
plot(dif)

# RGB plot with three different layers in time 
# on the red = 2000, all of the parts becoming red will have high temps in 2000
# on the green = 2005, all of the parts becoming green will have high temps in 2005
# on the blue = 2015, all of the parts becoming blue will have high temps in 2015

im.plotRGB(gr, r=1, g=2, b=4)


#-------------------------------
