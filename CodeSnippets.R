#Histogram
hist(USstatePops$V1, breaks=20)

#rnorm generates a random data set that fits the normal distribution
#rnorm(no. of data points, mean, sd)
rnorm(51, 6043834, 6823984)

#Drawing a sample
sample(USstatePops$V1,size=16,replace=TRUE)

#R has a variety of ways of repeating an activity. One of the easiest ones to use is the replicate() function.
replicate(4, mean(sample(USstatePops$V1,size=16,replace=TRUE)),simplify=TRUE)
