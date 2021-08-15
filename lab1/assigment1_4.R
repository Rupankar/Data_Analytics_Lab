#R prog to find multiplication table

#user input
num <- readline(prompt = "Enter a number between 1 and 10 ");


#print the input
print(paste0("The entered number is ",num));


#input is taken as character. Cast to integer
num <- as.integer(num);


product <- 0;

print(paste0("The multiplication table for ",num," is"));

for (x in 1:10)
{
  product <- num*x;
  
  print(paste0(num," * ",x," = ",product));
}