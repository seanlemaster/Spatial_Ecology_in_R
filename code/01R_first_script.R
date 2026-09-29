# Script for using R.

# Operation.
2 + 3

# Assigning an object.
samuele <- 2 + 3

# Another object.
gemma <- 4 + 6

# Different Objects.
samuele + gemma
samuele * gemma
samuele ^ gemma


tia <- 5 * 4

tia + samuele + gemma

matteo <- c(5, 10, 20, 50, 80)  ## An array is a set of elements: this is the array of mammal species 

# c= function
# everything separated by a comma is called arguments. 

elisa <- c(100, 80, 50, 20, 10) ## an array of human deaths dues to disease

plot(matteo, elisa)

## look up "point character in R" for list of symbol templates to use

## chainging the point character
plot(matteo, elisa, pch=8)

$$ character exaggeration
plot(matteo, elisa, pch=19, cex=2)

## changing the color
plot(matteo, elisa, pch=19, cex=2, col="blue")

## changing the labels
plot(matteo, elisa, pch=19, cex=2, col="chartreuse3", xlab="number of mammals", ylab="number of human deaths")

## changing the labels
plot(matteo, elisa, pch=19, cex=2, col="chartreuse3", xlab="number of mammals", ylab="number of human deaths")

## changing size of axis labels.
plot(matteo, elisa, pch=19, cex=2, col="chartreuse3", xlab="number of mammals", ylab="number of human deaths", ccex.lab=2)



