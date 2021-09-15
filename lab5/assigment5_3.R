
#a. Define a normalized vector P
p <-rnorm(10);

#b. Define a normalized vector Q
q <-rnorm(10);

#c. Combine P and Q as matrix object
mat <-rbind(p,q);

#Compute the Euclidean Distance with default parameters
library(philentropy);

euc_dis <-distance(mat, method = "euclidean");

print(paste0("The euclidean distance is: ",euc_dis));

#Question 3

#a. Calculate Manhattan distance

man_dis <-distance(mat, method = "manhattan");

print(paste0("The manhattan distance is: ",man_dis));

#b. Calculate Cosine Similarity

library(coop);

cosine(mat);