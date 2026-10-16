# Code for performing multivariate analysis with commuinity data

# The vegan package will be used for the multivariate part. 

# Using the data insdie vegan
data(dune)

# Looking inside the dataset 
Dune

# Looking at a few rows 
head(dune)

# Principal component analysis with vegan
multipca <- pca(dune)

# Principal components analysis without vegan
multivar <- prcomp(dune)

# Looking at the percentage of variancve explinaed by each principal component
summary(multipca)   ## the proportion explained section is the percentage of variance 

# How much variability is explained by the first two components?
# proportion of PC1: 0.2947
# percentge of explained vairability by PC1: 29.47%

# Exercise: calculate the percentage of explained variability by PC2: 21.57%

# Exercise: we are going to make a graph with just two dimensions over the 20 original dimensions, what is the total vriability explained by PC1 and PC2:
totvar = 29.47 + 21.57
totvar

# Make the final plot
plot(multipca)
