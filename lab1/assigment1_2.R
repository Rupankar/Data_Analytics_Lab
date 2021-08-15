
# R program to find sum of n natural nums with loop

#taking user input

num1 <- readline(prompt = "Enter a number ");


#print entered number
print(paste0("The entered number is ",num1));


#initialize sum to 0
sum <- 0;


#using for loop for sum

for (x in 1:num1)
{
  sum <- sum + x;
}

#print the sum
print(paste0("The sum of first ",num1," natural numbers is ",sum));
