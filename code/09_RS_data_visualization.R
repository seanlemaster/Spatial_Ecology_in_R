# code for visualizing remote sensing data

library(terra)
library(imageRy)

# checking the data 

# importing one layer of a satellite image which is called "band"

b2 <- im.import("sentinel.dolomites.b2.tif")
