
#read the contents of the file

df <- read.csv("D://IIITG/Sem 3/Data Analytics Lab/lab3/PAICOL.csv", header = TRUE, sep = ",");

library(ggplot2)


#Format date as type date
df$DATE=as.Date(df$DATE,origin=df$DATE[1])


#(a) Create a line plot of the attribute LEVEL
ggplot(data = df,aes(DATE,LEVEL))+geom_line()


#(b) Create a scatter plot of the RAIN against LEVEL
ggplot(data = df,aes(RAIN,LEVEL)) +geom_point()


#(c) Create a plot of the RAIN and LEVEL
ggplot(df,aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))+geom_line(data=df,aes(DATE,RAIN,color="RAIN"))


#(d)


#(e)Plot the LEVEL for the year 2001
df$YEAR = as.numeric(format(df$DATE, "%Y"))
year_2001=(df$YEAR==2001)
ggplot(df[year_2001,],aes(DATE,LEVEL))+geom_line()