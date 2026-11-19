# Example code to downlaod external data and upload them to R

library(terra)
library(imageRy)
library(viridis)


setwd("/Users/seanlemaster/Downloads/SpatialEcologyR")

#check working directory 
getwd()

# import the image
ozone <- rast("ozone_geos5_20260918_hires")
ozone 

# Plot the image
plot(ozone)

# group photo 
gp <- rast("DJI_20261118105938_0002_D.jpeg")
gp

# plot the RGB image
plot(gp)

# plot changing the RGB
plotRGB(gp, 2, 3, 1, stretch="lin")

# group photo NDVI
gpndvi <- rast("DJI_20261118105938_0002_F.jpeg")
plot(gpndvi)

# Multiframe
im.multiframe(1,2)
plot(gp)
plot(gpndvi)

# Plotting just the first layer to avoid plotting the rainbow color 
plot(gpndvi[[1]])

# Plotting single layers
im.multiframe(2,2)
plot(gpndvi[[1]])
plot(gpndvi[[2]])
plot(gpndvi[[3]])

# importing several images alltogether
files <- list.files(path="/Users/seanlemaster/Downloads/SpatialEcologyR",
          pattern="20261118105853_0005",
          full.names=TRUE)

bologna <- rast(files)
bologna <- flip(bologna)
plot(bologna[[1]], col="magma"(100))



#Uploading directly from Github or Zenodo 
## Use chat GPT to find the real link

groupphoto <- rast(https://github.com/seanlemaster/Spatial_Ecology_in_R_2026/blob/main/Data/group_photo/DJI_20261118105938_0002_D.JPG/paste)
