# Looking at how species are related to each other in time

library(overlap)

#using the dataset
data(kerinci)
kerinci
head(kerinci)   # to look at first 10 rows

# if you want to look at the end of the set: tail()

# Getting a summary of the dataset 
summary(kerinci)

# Circular time 
circulartime <- kerinci$Time*2*pi


# Putting the circular time insid the dataset
kerinci$Timecirc <- kerinci$Time*2*pi

# Looking at the new column
head(kerinci)

# subsetting the dataset with the selection of the species tiger AKA just selecting the data for tiger
tiger <- kerinci[kerinci$Sps=="tiger",]

# Density plot of spreading of the tiger in the area in different times 
densityPlot(tiger$Timecirc)

# Alternative method: create the time variable from the tiger datasite and use it in the calculation 
tigertime <- tiger$Timecirc
densityPlot(tigertime)

# Alternative Method 2: selecting a column will not necessarily require the name 
#tigertime <- tiger[4]

# Exercise: select all the rows of the kerinci dataset with the species macaque
macaque <- kerinci[kerinci$Sps=="macaque",]

# Exercise: how to be sure that only macaque are present
summary(macaque)

# Exercise: make the density plot 
macaquetime <- macaque$Timecirc
densityPlot(macaquetime)

# Overlap the two distributions 
overlapPlot(tigertime, macaquetime, linetype=c(3,1))

# Changing the line colors
overlapPlot(tigertime, 
            macaquetime, 
            linetype=c(3,1),
            linecol=c("red","blue")
            )


# Changing the overlap colors
overlapPlot(tigertime, 
            macaquetime, 
            linetype=c(3,1),
            linecol=c("red","blue"),
            olapcol="deeppink"
            )


