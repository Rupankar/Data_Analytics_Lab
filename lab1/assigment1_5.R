#R prog to find sum of N natural nums using formula


#taking user input
num <- readline(prompt = "Enter a number ");


#input is of type character. Cast to integer

num <- as.integer(num);


#calc the sum of n nums
sum <- 0;

sum <- num*(num+1)/2;


#print the sum
print(paste0("The sum of ",num," natural number is ",sum));
