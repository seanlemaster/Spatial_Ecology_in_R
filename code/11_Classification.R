# To classify satellite data

library(terra)
library(imageRy)
library(ggplot2)
library(patchwork)

# List of the data
im.list()

#Import the Solar Orbiter image and assign it to the object called "sun"
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

#Classifying the data
sunclass <- im.classify(sun, num_clusters=3)

# Seed
sunclass <- im.classify(sun, num_clusters=3, seed=42)

# Importing data of Matogrosso
# Exercise: import the data of Mato Grosso and give them the names m1992 and m2006

m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

#Flip the images towards north 
m1992 <-flip(m1992)
m2006 <-flip(m2006)

im.multiframe(1,2)
plot(m1992)
plot(m2006)

# Classifying the m1992 image into forest and human
m1992class <- im.classify(m1992, num_clusters=2)
#class1: forest
#class2: human

# same with 2006
m2006class <- im.classify(m2006, num_clusters=2)
#class1: forest
#class2: human

# Frequency of pixels attaiing the the classes of m1992 class
f1992 <-freq(m1992class)
f1992
#the count column tells you pixels 

# calculating proportions 
tot1992 <- ncell(m1992class)
tot1992
# gives you the number of pixels 

# proportions of the two classes
prop1992 <- f1992 / tot1992
prop1992
# the count column gives the proporitons 

# Calculating percentages 
perc1992 = prop1992 * 100
perc1992

# forest: 83%
# human: 17%

# Repeat but for 2006
f2006 <-freq(m2006class)
f2006

tot2006 <- ncell(m2006class)
tot2006

prop2006 <- f2006 / tot2006
prop2006

perc2006 = prop2006 * 100
perc2006

# Creating the dataframe 
class <- c("Forest", "Human")
perc1992 <- c(83, 17)
perc2006 <- c(45, 55)

tabout <- data.frame(class, perc1992, perc2006)
tabout

# plotting stats
# 1992
ggplot(tabout, aes(x=class, y=perc1992, color=class)) +
  geom_bar(stat="identity", fill="white")

# 2006
ggplot(tabout, aes(x=class, y=perc2006, color=class)) +
  geom_bar(stat="identity", fill="white")

# Changing the geometry
ggplot(tabout, aes(x=class, y=perc1992, color=class)) +
  geom_point()

# Using the patchwork package to plot several plots together 
p1 <- ggplot(tabout, aes(x=class, y=perc1992, color=class)) +
  geom_bar(stat="identity", fill="white")

p2 <- ggplot(tabout, aes(x=class, y=perc2006, color=class)) +
  geom_bar(stat="identity", fill="white")

p1 + p2

# Exercise: wtith patchwork, put one plot ontop of the other
p1 / p2

# IMPORTANT: matching the scales 
p1 <- ggplot(tabout, aes(x=class, y=perc1992, color=class)) +
  geom_bar(stat="identity", fill="white") +
  ylim(c(0,100))

p2 <- ggplot(tabout, aes(x=class, y=perc2006, color=class)) +
  geom_bar(stat="identity", fill="white") +
  ylim(c(0,100))

p1 + p2


# Remvoing one legend
p1 <- ggplot(tabout, aes(x=class, y=perc1992, color=class)) +
  geom_bar(stat="identity", fill="white") +
  ylim(c(0,100)) +
  theme(legend.position = "none")

p2 <- ggplot(tabout, aes(x=class, y=perc2006, color=class)) +
  geom_bar(stat="identity", fill="white") +
  ylim(c(0,100))

p1 + p2


# Using patchwork with satellite data
s1 <- im.ggplot(m1992[[1]])
s2 <- im.ggplot(m2006[[1]])

# plotting satellite data and stats together 
( s1 | s2) /
(p1 | p2)

# doing the same with RGB images
RGB1 <- im.ggplotRGB(m1992)
RGB2 <- im.ggplotRGB(m2006)

#Final plot
( RGB1 | RGB2) /
(p1 | p2)

