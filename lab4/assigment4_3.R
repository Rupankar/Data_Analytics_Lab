
#random sample from the normal distribution, and plot the estimated density function
nor_sam <- rnorm(50);

print(nor_sam)


plot(density(nor_sam),main='random sample from the normal distribution')

#take repeated samples of size 4, calculate the mean for each such sample, and plot the density

arr <- numeric(50);

for (i in 1:50) {
  
  arr[i] <-mean(rnorm(4))
  
}

plot(density(arr),col='green',main='Sample size 4')

# taking samples of size 9, and of size 25

arr <- numeric(50);

for (i in 1:50) {
  
  arr[i] <-mean(rnorm(9))
  
}

plot(density(arr),col='red',main='Sample size 9')



arr <- numeric(50);

for (i in 1:50) {
  
  arr[i] <-mean(rnorm(25))
  
}

plot(density(arr),col='blue',main='Sample size 25')
  