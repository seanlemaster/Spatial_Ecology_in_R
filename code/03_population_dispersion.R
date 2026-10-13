# Script for modelling the dispersion of individuals in a population.

# New packages
#install.packages("terra")
#install.packages("sdm")

library(terra)
library(sdm)

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
points(absence, col="red", cex=1.5)

