#ensure it is reproducible
set.seed(123);


vec <- sample(1:5, size = 15, replace = T,prob = c(0.3,0.8,0.6,0.4,0.2));

#(a)Take a random vector and probability associated with it and plot it with a bar graph
barplot(table(sample(1:5, size = 15, replace = T,prob = c(0.3,0.8,0.6,0.4,0.2))));



#(b)create a cumulative frequency table and plot the cumulative frequency against each sample point  in the vector
data <-table(vec);

cumfreq_data <- cumsum(data);
print (cumfreq_data);


barplot(cumfreq_data);


#(d)Compute poisson distribution with p=0.2. Plot it to visulaise the distribution.

vec <- as.numeric(1:10)

poi_vec <-dpois(vec,p=0.2)
