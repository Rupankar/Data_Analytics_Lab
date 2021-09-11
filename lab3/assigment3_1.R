
#read the file contents

data<- read.csv("D://IIITG/Sem 3/Data Analytics Lab/lab3/Iris.csv", header = TRUE, sep = ",");


#calculate cumulative sum for petal length
data$cum_Petal_Length <-cumsum(data$PetalLengthCm);


#a.Create Bar Plots to show the comparison between cumulative totals across PetalLength
barplot(data$cum_Petal_Length,xlab="Id->",ylab="cumulative totals ->",
main="cumulative totals across Petal Length",names.arg=data$Id);



#b.comparison between cumulative totals across Species and Petal Length
data$cum_across_Species <- ave(data$PetalLengthCm, data$Species, FUN=cumsum);

data2<-table(data$cum_across_Species,data$PetalLengthCm);

library(RColorBrewer)

barplot(data2,col= brewer.pal(3,"Set2"));


#c.the spread (of Sepal Length) across various categories ( of Species)
boxplot(data$SepalLengthCm~data$Species,col=topo.colors(3));


#d,

