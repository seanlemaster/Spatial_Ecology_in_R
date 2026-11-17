# Example code to downlaod external data and upload them to R

library(terra)


setwd("/Users/seanlemaster/Downloads/SpatialEcologyR")

#check working directory 
getwd()

# import the image
ozone <- rast("ozone_geos5_20260918_hires")
ozone 

# Plot the image
