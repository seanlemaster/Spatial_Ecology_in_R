# Script for modelling the dispersion of individuals in a population.

# New packages
#install.packages("terra")
#install.packages("sdm")
#install.packages("viridis")

library(terra)
library(sdm)
library(viridis)

path <- system.file("external/species.shp", package="sdm")
path  #shows how it is installed inside my operating system, path to the file 

# impoprt the vector data
rana <- vect(path)
rana # always good to look at data to see the coord ref

# Plot
plot(rana)

# looking at coordinates
coordinates <- geom(rana)

# subset the dataset extracting presences
presence <- rana[rana$Occurrence == 1]   ## search for all the occurrances that equal 1. 

# Exercise: select and assign absences
absences <- rana[rana$Occurrence == 0]
# OR
absences <- rana[rana$Occurrence != 1]    # excluding 1

# plot the presences
plot(presence)



# Exercise: plot presences and absences with different colors in the same plot
plot(presence, col="blue", cex=1.5)
points(absences, col="red", cex=1.5)

# Load the path to the elevation file.
elev <- system.file("external/elevation.asc", package="sdm")

# Exercise: using the rast() function import the data
elevmap <- rast(elev)
plot(elevmap)

# Exercise: change the colors of the map
cl <- colorRampPalette(c("dark blue", "blue", "light blue"))(100)
plot(elevmap, col=cl)

# plotting presences vs elevation
cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(elevmap, col=cl)
points(presence, cex=2)

# Import and plot temp with the cl ramp palette
temp <- system.file("external/temperature.asc", package="sdm")
tempmap <- rast(temp)
plot(tempmap)

cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(tempmap, col=cl)
points(presence, cex=2)

# do the same with precipitation
prec <- system.file("external/precipitation.asc", package="sdm")
precmap <- rast(prec)
plot(precmap)

cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(precmap, col=cl)
points(presence, cex=2)

# same for vegetation
veg <- system.file("external/vegetation.asc", package="sdm")
vegmap <- rast(veg)
plot(vegmap)

cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(vegmap, col=cl)
points(presence, cex=2)

# plotting the elevation map with the virdis package
plot(elevmap, col=plasma(100))

# multi-frame
par(mfrow=c(2,2))
plot(elevmap, col=plasma(100), main="elevation")
plot(vegmap, col=viridis(100), main="vegetation")
plot(tempmap, col=mako(100), main="temperature")
plot(precmap, col=magma(100), main="precipitation")

#making a stack, MUCH easier
drivers <- c(elevmap, tempmap, precmap, vegmap)
plot(drivers, col=inferno(100))

# PLot a single driver from the stack
t <- drivers[[2]]
plot(t)
points(presence, cex=2)

