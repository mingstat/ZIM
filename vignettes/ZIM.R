## ------------------------------------------------------------------------
library(ZIM)

## ------------------------------------------------------------------------
data(syph)
count <- syph$a33
ar1 <- bshift(count > 0)
trend <- 1:length(count) / 1000

## ------------------------------------------------------------------------
m1 <- zim(count ~ ar1 + trend | trend)
m1

## ------------------------------------------------------------------------
m2 <- zim(count ~ ar1 + trend | trend, dist = "zinb")
m2

## ----dzim-zip, cache=TRUE------------------------------------------------
set.seed(123)
system.time(m3 <- dzim(count ~ trend, dist = "zip", N = 100, R = 100, niter = 50))
m3

## ----dzim-zinb, cache=TRUE-----------------------------------------------
set.seed(123)
system.time(m4 <- dzim(count ~ trend, dist = "zinb", N = 100, R = 100, niter = 50))
m4

