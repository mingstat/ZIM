# The Zero-Inflated Poisson Distribution

Density, distribution function, quantile function and random generation
for the zero-inflated Poisson (ZIP) distribution with parameters
`lambda` and `omega`.

## Usage

``` r
dzip(x, lambda, omega, log = FALSE)
pzip(q, lambda, omega, lower.tail = TRUE, log.p = FALSE)
qzip(p, lambda, omega, lower.tail = TRUE, log.p = FALSE)
rzip(n, lambda, omega)
```

## Arguments

- x, q:

  vector of quantiles.

- p:

  vector of probabilities.

- n:

  number of random values to return.

- lambda:

  vector of (non-negative) means.

- omega:

  zero-inflation parameter.

- log, log.p:

  logical; if TRUE, probabilities `p` are given as `log(p)`.

- lower.tail:

  logical; if TRUE (default), probabilities are `P[X <= x]`, otherwise,
  `P[X > x]`.

## Value

`dzip` gives the density, `pzip` gives the distribution function, `qzip`
gives the quantile function, and `rzip` generates random deviates.

## See also

[`dzinb`](https://mingstat.github.io/ZIM/reference/dpqr-zinb.md),
[`pzinb`](https://mingstat.github.io/ZIM/reference/dpqr-zinb.md),
[`qzinb`](https://mingstat.github.io/ZIM/reference/dpqr-zinb.md), and
[`rzinb`](https://mingstat.github.io/ZIM/reference/dpqr-zinb.md) for the
zero-inflated negative binomial (ZINB) distribution.

## Examples

``` r
dzip(x = 0:10, lambda = 1, omega = 0.5)
#>  [1] 6.839397e-01 1.839397e-01 9.196986e-02 3.065662e-02 7.664155e-03
#>  [6] 1.532831e-03 2.554718e-04 3.649598e-05 4.561997e-06 5.068886e-07
#> [11] 5.068886e-08
pzip(q = c(1, 5, 9), lambda = 1, omega = 0.5)
#> [1] 0.8678794 0.9997029 0.9999999
qzip(p = c(0.25, 0.50, 0.75), lambda = 1, omega = 0.5)
#> [1] 0 0 1
set.seed(123)
rzip(n = 100, lambda = 1, omega = 0.5)
#>   [1] 1 0 1 0 0 2 0 0 0 0 0 0 0 0 1 0 1 3 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 0
#>  [38] 2 3 1 0 1 0 0 2 0 0 0 0 0 2 1 0 0 0 1 1 0 0 0 0 0 1 1 0 1 0 0 0 0 0 0 0 2
#>  [75] 1 1 1 0 2 1 2 0 1 0 1 1 0 0 0 2 0 0 4 0 3 1 0 1 0 0
```
