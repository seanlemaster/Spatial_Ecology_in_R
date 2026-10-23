# Code to develop graphs from species as nodes 

library(igraph)

species <- c("Algae", "Zooplankton", "Small Fish", "Large Fish", "Bird")

predator <- c("Zooplankton", "Small Fish", "Large Fish", "Bird", "Bird")
prey <- c("Algae", "Zooplankton", "Small Fish", "Small Fish", "Large Fish")

# Exercise: create a dataframe with predators and prey inside 
interactions <- data.frame(predator, prey)

# Building the visual model
graph <- graph_from_data_frame(interactions, vertices=species)
plot(graph)

# Building the graph without arrows 
graph <- graph_from_data_frame(interactions, vertices=species, directed=FALSE)
plot(graph)

# The graph will maintain the same interactions but with a different representation
# The seed!

set.seed(42)
graph <- graph_from_data_frame(interactions, vertices=species, directed=FALSE)
plot(graph)
