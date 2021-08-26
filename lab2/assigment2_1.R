
#read the file and put the contents in data a data frame

df <- data.frame(read.csv("D://IIITG/Sem 3/Data Analytics Lab/lab2/Dataset.csv", header = TRUE, sep = ","));


#print the data read from the file
#print(df);


#create a duplicate data frame 
df1 <- df;




#replacing empty vales in column Age with the mean of the column
# na.rm = TRUE -> exclude empty vales from the mean calculation
df1$Age[is.na(df1$Age)] <- mean(df1$Age, na.rm = TRUE);

#replacing empty vales in column Salary with the mean of the column
df1$Salary[is.na(df1$Salary)] <- mean(df1$Salary, na.rm = TRUE);



#Encode "France", "Spain" and "Germany" with 1, 2, 3 values
df1$Country[df$Country=="France"]<-1;
df1$Country[df$Country=="Spain"]<-2;
df1$Country[df$Country=="Germany"]<-3;


#Encode Yes with 0 and No with 1
df1$Purchased[df$Purchased=="No"]<-1;
df1$Purchased[df$Purchased=="Yes"]<-0;



#need to convert Country and Purchased column encoded values to numeric
df1$Country <- as.numeric(as.factor(df1$Country))
df1$Purchased <- as.numeric(as.factor(df1$Purchased))


#scaling: Standardization
df1 <- scale(df1, center = TRUE, scale = TRUE)



#print the data_frame
print(df1)





