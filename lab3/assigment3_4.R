
#sample of 100 numbers which are incremented by 1.5
sample<-seq(length=100,by=1.5);

sample<-as.integer(sample);


# Create the binomial distribution.
#dbinom(x, size, prob)p is a vector of probabilities.
#x is a vector of numbers
#size is the number of trials
#prob is the probability of success of each trial
bin_dist <- dbinom(sample,140,0.45);

#plot the dot chart
dotchart(bin_dist,color = "blue")

