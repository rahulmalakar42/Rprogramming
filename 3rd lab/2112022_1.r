
n = 100
#short tailed: Uniform (on [0,2]) with mu = 1 and sigma = 0.3333;
short <- runif(n,min=0,max=2)
RandomData <- short
title <- "Right tailed Distribution"
std<-sd(RandomData)
m <- mean(RandomData)
hist(RandomData, xlab="Data", freq = FALSE, main=title)
curve(dnorm(x, mean=m, sd=std), col="blue", lwd=2, add=TRUE)
lines(density(RandomData,adjust=3),col = "red", lwd=2)


# N <- 10000
# x <- rgeom(N, .5)
# hist(x,
# xlim=c(min(x),max(x)), probability=T,
# nclass=max(x)-min(x)+1,
# col='lightblue',
# main='Geometric distribution, p=.5')
# lines(density(x,bw=1), col='red', lwd=3)

# N <- 10000
# x <- rgeom(N, .01)
# hist(x,
# xlim=c(min(x),max(x)), probability=T, nclass=20,
# col='lightblue',
# main='Geometric distribution, p=.01')
# lines(density(x), col='red', lwd=3)

# N <- 10000
# x <- rnbinom(N, 10, .5)
# hist(x,
# xlim=c(min(x),max(x)), probability=T,
# nclass=max(x)-min(x)+1,
# col='lightblue', xlab=' ', ylab=' ',
# axes=F,main='Positive Skewed')
# lines(density(x,bw=1), col='red', lwd=3)

# n <- 1000
# x <- rexp(n)
# hist(x, probability=T,
# col='light blue', main='Exponential
# Distribution')
# lines(density(x), col='red', lwd=3)
# curve(dexp(x), xlim=c(0,10), col='red',
# lwd=3, lty=2,
# add=T)

