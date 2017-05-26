# EE232E Project 2 Problem 3 Part 1
# Name: Weikun Han, Duzhi Chen
# Date: 5/25/2017
# Reference:
#  - https://google.github.io/styleguide/Rguide.xml#indentation
#  - http://www.imdb.com
#  Description:
#  - Run pagerank algorithm on the actor/actress network

library("igraph")

# Setup the file path to load data
file_path <- "~/Documents/project1/facebook_combined.txt"

# Load the graph from the path
graph <- read.graph(file = file_path ,format = "ncol", directed = TRUE)

# Run pagerank algorithm
pr <- page.rank(graph, directed = TRUE, damping = 0.85)
sorted_pr <- sort(pr$vector, decreasing = TRUE, index.return = TRUE)

# Store data into .txt file
write.table(sorted_pr[[1]], file='pagerank_score.txt', col.names = FALSE)

# Print information
cat("-------------------------Processing Finshed 3----------------------------------\n",
    "Run pagerank algorithm on the actor/actress network successfully!\n",
    "The first col in datesat is the ID for the artiest\n",
    "The second col in datesat is the pagerank score for the artiest\n",
    "-------------------------------------------------------------------------------\n")