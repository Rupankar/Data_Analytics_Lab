library(MASS)


data(Animals)


#print(Animals)

df <- data.frame(Animals)


print(df)


library(ggplot2)

hist(df$body,col = 'green',border = 'black',xlab = 'Mass',main= 'Hist & Density of Mass')
lines(density(df$body),lwd =5,col = 'chocolate')


#(a) Draw an estimated density curve for the logarithms of the values
mass_log <- data.frame(log(df))


est_den <- density(mass_log$body)

plot(est_den,col = 'blue',main='Estimated density')


#(b)Overlay the estimated density with the theoretical density
 
av <- mean(mass_log$body)
 
sdev <- sd(mass_log$body)



xval <- pretty(c(av - 3 * sdev, av + 3 * sdev), 50)
plot(est_den,col = 'blue',main='Estimated density Vs. Theoretical Density')
lines(xval, dnorm(xval, mean = av, sd = sdev))


