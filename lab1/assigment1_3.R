#R program to find the highest of 3 nums using function 
#and sum of n natural nums

#function to find the highest of 3

highest <-function(num1,num2,num3)
{
  if (num1>num2 && num1>num3)
  {
    print(paste0("The highest of three numbers is ",num1));
  }else if (num2>num1 && num2>num3)
  {
    print(paste0("The highest of three numbers is ",num2));
  }else
  
  {
    print(paste0("The highest of three numbers is ",num3));
  }
}

#function to calc sum of n natural nums

sum_of_n <-function(n)
{
  #initialize sum to 0
  sum <- 0;
  
  for (x in 1:n)
  {
    sum <- sum + x;
  }
  
  print(paste0("The sum of ",n," natural numbers is ",sum))
}

#taking user input

num1 <- readline(prompt = "Enter first number ");
num2 <- readline(prompt = "Enter second number ");
num3 <- readline(prompt = "Enter third number ");

#printing the numbers entered by the user

print(paste0("The numbers entered are ",num1," ",num2," ",num3));

#function call

highest(num1,num2,num3);

#taking user input for n number
num <- readline(prompt = "Enter a number ");

print(paste0("The number entered is ",num1));

sum_of_n(num);
