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
#Plotting the various residuals 
> par(mfrow =c(2,2))
> plot(lm.fit)
#Alternative approach
> plot(predict (lm.fit), residuals (lm.fit))
> plot(predict (lm.fit), rstudent (lm.fit))

#Anova() can be used to compare two models
anova(<model 1>, <model 2>)
#The anova() function performs a hypothesis test comparing the two models. The null hypothesis is that the two models fit the data 
#equally well, and the alternative hypothesis is that the full model is superior. If the F-statistic is large and the 
#associated p-value is virtually zero, then it provides very clear evidence that the model 2 is far superior to model 1
        
        
#To draw pair-wise correlation plots for all vataibles in a df
pairs(<data frame>)
#To get correlation matrix
cor(subset(<data frame>))
#Visual cor plot
qtlcharts::iplotCorr(<df>)
        
        

#To omit rows that contain NA in any column/variable
na.omit(<data frame>)

#To perform best subset selection using RSS measure
model <- leaps::regsubsets(<model formula>, <data>)
summary(model)
#An asterisk in the esult indicates that a given variable is included in the corresponding
#model. By default, regsubsets() only reports results up to the best eight-variable model. But the nvmax option can be used
#in order to return as many variables as are desired. Here we fit up to a 19-variable model.
model <- leaps::regsubsets(<model formula>, <data>, nvmax = 19)
#The summary() function also returns R2, RSS, adjusted R2, Cp, and BIC. Use $ sign to get the resp variable     
plot(reg.summary$rss ,xlab=" Number of Variables ",ylab=" RSS", type="l")  
        

#URLS
#Interactive web elements: http://www.web-maps.com/gisblog/?p=2365
#rMaps: http://rmaps.github.io/
#Great tutorial on maps: https://github.com/Robinlovelace/Creating-maps-in-R
#Another maps example: https://ropensci.org/usecases/spocc_gistmap.html
#Leaflets: https://blog.rstudio.com/2015/06/24/leaflet-interactive-web-maps-with-r/


#Miscellaneous
https://mentalmodels4life.net
