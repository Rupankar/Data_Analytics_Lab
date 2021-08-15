#R program for a simple calculator


#taking user input
num1 <- readline(prompt = "Enter number 1: ");
num2 <- readline(prompt = "Enter number 2: ");


#cast input to type numeric
num1<-as.numeric(num1);
num2<-as.numeric(num2);



#addition function
addition <- function(num1,num2)
{
  print(paste0("The addition of ",num1," and ",num2," is ",num1+num2));
}


#subtraction function
subtraction <- function(num1,num2)
{
  print(paste0("The subtraction of ",num2," from ",num1," is ",num1-num2));
}



#multiplication function
multiplication <- function(num1,num2)
{
  print(paste0("The multiplication of ",num1," and ",num2," is ",num1*num2));
}



#division function
division <- function(num1,num2)
{
  print(paste0("The division of ",num1," by ",num2," is ",num1/num2));
}








#using repeat until user exit
repeat
{
  print("------------------------");
  print("Select a option");
  print("Press 1 to add the numbers");
  print("Press 2 to subtract the numbers");
  print("Press 3 to multiply the numbers");
  print("Press 4 to divide the numbers");
  print("Press 5 to exit");
  print("------------------------");
  option <- readline();
  
  
  #call function based on the option selected by user 
  
  if(option == 1)
  {
    addition(num1,num2);
    
  }else if (option ==2)
  {
    subtraction(num1,num2);
    
  }else if (option ==3)
  {
    multiplication(num1,num2);
  }
  else if (option == 4)
  {
    division(num1,num2);
  } else                           #exit condition
  {
    break;
  }
}