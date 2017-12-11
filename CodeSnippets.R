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

#a numerical minimisation tool called Newton-Raphson search. The intuition of Newton-Raphson is pretty simple: 
#you pick a starting point and look around for the steepest slope. You then ski down that slope a little way, 
#and then repeat again and again, until you can’t go any lower. In R, we can do that with optim():
optim(<start point>, <cost function> , <data>)

#Example
best <- optim(c(0, 0), measure_distance, data = sim1)
best$par


## LINEAR REGRESSION ######
coef(<model>) is used to retreive the co-efficients
#In order to obtain a confidence interval for the coefficient estimates, we can use the confint() command.
confint(<model>
#The predict() function can be used to produce confidence intervals and predict() prediction intervals for the prediction of medv for a given value of lstat.
predict(<model>, <Data>, interval = "confidence/prediction") 
predict (lm.fit ,data.frame(lstat=c(5 ,10 ,15) ), interval ="confidence")
#plot lin reg line
abline(<model>)



#URLS
#Interactive web elements: http://www.web-maps.com/gisblog/?p=2365
#rMaps: http://rmaps.github.io/
#Great tutorial on maps: https://github.com/Robinlovelace/Creating-maps-in-R
#Another maps example: https://ropensci.org/usecases/spocc_gistmap.html
#Leaflets: https://blog.rstudio.com/2015/06/24/leaflet-interactive-web-maps-with-r/


#Miscellaneous
https://mentalmodels4life.net
