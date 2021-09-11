

#create the data
data <- matrix(rnorm(n=100, mean=0, sd=1), nrow = 10, ncol = 10)           

#create row and column names
row <- paste0("row_",1:10);
column <- paste0("col_ ",1:10);

 
#create the heat map
heatmap(data, Rowv = NA, Colv = NA,labRow = row,labCol = column);