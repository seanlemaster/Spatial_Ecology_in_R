# R code for population density.

## Installing packages
install.packages("spatstat")

# using the package(s)
library(spatstat)

# Recall the data
bei

#looking art the points in space. 
plot(bei)

# changing the shape
plot(bei, pch=15)

# Decreasing the dimension
plot(bei, pch=15, cex=.5)

#Drivers, tells you all the variables in the dataset 
bei.extra

# Plotting variables
plot(bei.extra)

# Subsetting a dataset: new conceot
# there are two different methods to make a subset:
# first: name of the variable and the $ symbol
# second: number of the variable in order and the [[]] symbol

elevation <- bei.extra$elev  ## selecting only elev variable from the dataset

# Plot elevation
plot(elevation)

# subset by the number of the vsariable if you can't access or remember the name
elevation2 <- bei.extra[[1]]

# If bei.extra was a table, we would use bei.extra[1]


# plot the new object 
plot(elevation2)
