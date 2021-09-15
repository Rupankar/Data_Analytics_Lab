
#a. Import Iris data set
library(datasets);
data(iris);

#b.plot where the x-axis and the y-axis represent the petal length and the petal width
plot(x=iris$Petal.Length,y=iris$Sepal.Width,main='Petal Length Vs Sepal Width',xlab = 'Petal Length'
     ,ylab = 'Sepal Width');


#c. Compute the similarity measure of  petal length and petal width
setosa<-iris[iris$Species == "setosa", c("Petal.Length", "Petal.Width")];
versicolor<-iris[iris$Species == "versicolor", c("Petal.Length", "Petal.Width")];
virginica<-iris[iris$Species == "virginica", c("Petal.Length", "Petal.Width")];

#Using euclidean Distance
library(philentropy);

#setosa & versicolor
euc_set_ver_pl <-distance(rbind(setosa$Petal.Length,versicolor$Petal.Length), method = "euclidean");
euc_set_ver_wl <-distance(rbind(setosa$Petal.Width,versicolor$Petal.Width), method = "euclidean");

print(paste0("The euclidean distance between setosa & versicolor in feature Petal length 
              is ",euc_set_ver_pl," and and petal width is ",euc_set_ver_wl));



#versicolor & virginica
euc_ver_vir_pl <-distance(rbind(versicolor$Petal.Length,virginica$Petal.Length), method = "euclidean");
euc_ver_vir_wl <-distance(rbind(versicolor$Petal.Width,virginica$Petal.Width), method = "euclidean");

print(paste0("The euclidean distance between virginica & versicolor in feature Petal length 
              is ",euc_ver_vir_pl," and and petal width is ",euc_ver_vir_wl));



#virginica & setosa
euc_set_vir_pl <-distance(rbind(setosa$Petal.Length,virginica$Petal.Length), method = "euclidean");
euc_set_vir_wl <-distance(rbind(setosa$Petal.Width,virginica$Petal.Width), method = "euclidean");

print(paste0("The euclidean distance between setosa & virginica in feature Petal length 
              is ",euc_set_vir_pl," and and petal width is ",euc_set_vir_wl));