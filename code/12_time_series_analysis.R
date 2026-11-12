# R code for developiong ecosystem monitoring in different times.

library(terra)
library(patchwork)
library(imageRy)

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

# Time series analysis with several images at a time 
ndvi <- im.import("NDVI_2020")  # wow this opens all of them together in a stack 

# Ridgeline plaots
names(ndvi) <- c("02_feb", "05_may", "08_aug", "11_nov") #gotta assign names first 
im.ridgeline(ndvi, scale=1)
