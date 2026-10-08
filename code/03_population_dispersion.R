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

