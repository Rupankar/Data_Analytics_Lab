#read the file and put the contents in data a data frame

df <- data.frame(read.csv("D://IIITG/Sem 3/Data Analytics Lab/lab2/iris.csv", header = TRUE, sep = ","));




#calculating mean
sepal_lenth <-mean(df$SepalLengthCm);

sepal_width <-mean(df$SepalWidthCm);

petal_lenth <-mean(df$PetalLengthCm);

petal_width <-mean(df$PetalWidthCm);


#print the mean 
print(paste0("Mean of sepal length ",sepal_lenth));

print(paste0("Mean of sepal width ",sepal_width));

print(paste0("Mean of petal length ",petal_lenth));

print(paste0("Mean of petal width ",petal_width));



#sum of all the metrics across species and group by species
df2<-aggregate(df[2:5],by=list(df$Species),FUN=sum); 

print("__________________________________________________________________");
print("count of all the metrics across species and group by species");
print("__________________________________________________________________");
print(df2)
print("__________________________________________________________________");




#count of all the metrics across species and group by species
df2<-aggregate(df[2:5],by=list(df$Species),FUN=length);                         #fun = length to get the count

print("__________________________________________________________________");
print("Count of all the metrics across species and group by species");
print("__________________________________________________________________");
print(df2)
print("__________________________________________________________________");




#max of all the metrics across species and group by species
df2<-aggregate(df[2:5],by=list(df$Species),FUN=max); 

print("__________________________________________________________________");
print("max of all the metrics across species and group by species");
print("__________________________________________________________________");
print(df2)
print("__________________________________________________________________");
