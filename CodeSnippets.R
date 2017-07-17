#Histogram
hist(USstatePops$V1, breaks=20)

#rnorm generates a random data set that fits the normal distribution
#rnorm(no. of data points, mean, sd)
rnorm(51, 6043834, 6823984)

#The rpois() function will generate a stream of random numbers that roughly fit the Poisson distribution. The fit gets better as you ask for a larger and larger sample.
#The second number is the average delay between arrivals that you want the random number generator to try to come close to.
rpois(no. of data points,average delay)

#Drawing a sample
sample(USstatePops$V1,size=16,replace=TRUE)

#R has a variety of ways of repeating an activity. One of the easiest ones to use is the replicate() function.
replicate(4, mean(sample(USstatePops$V1,size=16,replace=TRUE)),simplify=TRUE)






#URLS
#Interactive web elements: http://www.web-maps.com/gisblog/?p=2365
#rMaps: http://rmaps.github.io/
#Great tutorial on maps: https://github.com/Robinlovelace/Creating-maps-in-R
#Another maps example: https://ropensci.org/usecases/spocc_gistmap.html
#Leaflets: https://blog.rstudio.com/2015/06/24/leaflet-interactive-web-maps-with-r/


#Miscellaneous
https://mentalmodels4life.net
