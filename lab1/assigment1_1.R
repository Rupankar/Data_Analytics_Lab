
# R program to find highest of 3 numbers

#taking user input

num1 <- readline(prompt = "Enter first number ");
num2 <- readline(prompt = "Enter second number ");
num3 <- readline(prompt = "Enter third number ");

#printing the numbers entered by the user

print(paste0("The numbers entered are ",num1," ",num2," ",num3));


#comparison of the numbers to find the larger of the 3 nums 

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
