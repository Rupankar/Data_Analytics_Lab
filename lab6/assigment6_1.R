# Download any two data sets of your choice

library(datasets);
#iris data set
data(iris);

#mtcats data set
data(mtcars);


#a.Visualize your data 

#mtcars visualization

#mpg Vs. wt
plot(x=mtcars$mpg, y=mtcars$wt, main='mpg Vs wt', xlab='mpg', ylab='wt');

#disp Vs. hp
plot(x=mtcars$disp, y=mtcars$hp, main='disp Vs hp', xlab='disp', ylab='hp');


# visualization of iris data set

#Petal Length Vs Sepal Width
plot(x=iris$Petal.Length,y=iris$Sepal.Width,main='Petal Length Vs Sepal Width',xlab = 'Petal Length'
     ,ylab = 'Sepal Width');

#Sepal Length Vs Petal Width
plot(x=iris$Sepal.Length,y=iris$Petal.Width,main='Sepal Length Vs Petal Width',xlab = 'Petal Length'
     ,ylab = 'Sepal Width');


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


km<-Kmeans(iris_df, 2, iter.max = 10, nstart = 1,method = "euclidean")

library(factoextra)

fviz_cluster(km,data=iris_df)


#Changing the maximum number of iterations
#100 iterations
km<-Kmeans(iris_df, 2, iter.max = 100, nstart = 1,method = "euclidean")
fviz_cluster(km,data=iris_df,main = '100 iterations')

#10000 iterations
km<-Kmeans(iris_df, 2, iter.max = 10000, nstart = 1,method = "euclidean")
fviz_cluster(km,data=iris_df,main = '10000 iterations')

#cluster center remains unchanged
km<-Kmeans(iris_df, 2, iter.max = 1, nstart = 1,method = "euclidean")
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

km<-Kmeans(mtcars, 2, iter.max = 10, nstart = 1,method = "euclidean")

library(factoextra)

fviz_cluster(km,data=mtcars)


#Changing the maximum number of iterations
#100 iterations
km<-Kmeans(mtcars, 2, iter.max = 100, nstart = 1,method = "euclidean")
fviz_cluster(km,data=mtcars,main = '100 iterations')

#10000 iterations
km<-Kmeans(mtcars, 2, iter.max = 10000, nstart = 1,method = "euclidean")
fviz_cluster(km,data=mtcars,main = '10000 iterations')

#cluster center remains unchanged
km<-Kmeans(mtcars, 2, iter.max = 1, nstart = 1,method = "euclidean")
fviz_cluster(km,data=mtcars,main = 'Cluster Center remains unchanged')
