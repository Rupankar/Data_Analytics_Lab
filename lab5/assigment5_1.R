
#a.import mtcars data set
data(mtcars);

#check the data
head(mtcars);


#b.Visualize your data using scatter plots

#mpg Vs. wt
plot(x=mtcars$mpg, y=mtcars$wt, main='mpg V wt', xlab='mpg', ylab='wt');

#disp Vs. hp
plot(x=mtcars$disp, y=mtcars$hp, main='disp V hp', xlab='disp', ylab='hp');

#c.Compute the Correlation between mpg and wt variables

corr <-cor(mtcars$mpg,mtcars$wt);

print(paste0("The correlation between mpg and wt variables is: ",corr));


