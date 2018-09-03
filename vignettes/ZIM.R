## ------------------------------------------------------------------------
library(ZIM)

## ------------------------------------------------------------------------
data(syph)
count <- syph$a33
count.lag1 <- bshift(count > 0)
trend <- 1:length(count) / 1000

## ------------------------------------------------------------------------
plot(ts(count), xlab = "Week", ylab = "Number of Syphilis Cases", 
     main = "Maryland (2007 - 2010)", type = "o", pch = 20, las = 1)
table(count)

## ------------------------------------------------------------------------
m1 <- zim(count ~ count.lag1 + trend | trend)
m1

## ------------------------------------------------------------------------
m2 <- zim(count ~ count.lag1 + trend | trend, dist = "zinb")
m2

## ----dzim-zip, cache=TRUE------------------------------------------------
set.seed(123)
system.time(m3 <- dzim(count ~ trend, dist = "zip", N = 200, R = 200, niter = 100))
m3

## ------------------------------------------------------------------------
dzim.plot(m3)

## ----dzim-zinb, cache=TRUE-----------------------------------------------
set.seed(123)
system.time(m4 <- dzim(count ~ trend, dist = "zinb", N = 200, R = 200, niter = 100))
m4

## ------------------------------------------------------------------------
dzim.plot(m4)

