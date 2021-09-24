# Download any two data sets of your choice

library(datasets);
#iris data set
data(iris);

#mtcats data set
data(mtcars);

#b.Perform K-Means Clustering
iris_df <- iris[1:4]

library(ClusterR)
library(cluster)
library(amap)


#finding the value of k using elbow method
set.seed(1)
wss<- NULL
for (i in 1:10){
  fit = kmeans(iris_df,centers = i)
  wss = c(wss, fit$tot.withinss)
}
plot(1:10, wss, type = "o",main = 'Elbow mwthod for Iris')


km<-Kmeans(iris_df, 2, iter.max = 10, nstart = 1,method = "manhattan")

library(factoextra)

fviz_cluster(km,data=iris_df)


#Changing the maximum number of iterations
#100 iterations
km<-Kmeans(iris_df, 2, iter.max = 100, nstart = 1,method = "manhattan")
fviz_cluster(km,data=iris_df,main = '100 iterations')

#10000 iterations
km<-Kmeans(iris_df, 2, iter.max = 10000, nstart = 1,method = "manhattan")
fviz_cluster(km,data=iris_df,main = '10000 iterations')

#cluster center remains unchanged
km<-Kmeans(iris_df, 2, iter.max = 1, nstart = 1,method = "manhattan")
fviz_cluster(km,data=iris_df,main = 'Cluster Center remains unchanged')




#Clustering Dataset: mtcars


#finding the value of k using elbow method
set.seed(1)
wss<- NULL
for (i in 1:10){
  fit = kmeans(mtcars,centers = i)
  wss = c(wss, fit$tot.withinss)
}
plot(1:10, wss, type = "o",main = 'Elbow method for Mtcars')

km<-Kmeans(mtcars, 2, iter.max = 10, nstart = 1,method = "manhattan")

library(factoextra)

fviz_cluster(km,data=mtcars)


#Changing the maximum number of iterations
#100 iterations
km<-Kmeans(mtcars, 2, iter.max = 100, nstart = 1,method = "manhattan")
fviz_cluster(km,data=mtcars,main = '100 iterations')

#10000 iterations
km<-Kmeans(mtcars, 2, iter.max = 10000, nstart = 1,method = "manhattan")
fviz_cluster(km,data=mtcars,main = '10000 iterations')

#cluster center remains unchanged
km<-Kmeans(mtcars, 2, iter.max = 1, nstart = 1,method = "manhattan")
fviz_cluster(km,data=mtcars,main = 'Cluster Center remains unchanged')
