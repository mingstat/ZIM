# The Zero-Inflated Negative Binomial Distribution

Density, distribution function, quantile function and random generation
for the zero-inflated negative binomial (ZINB) distribution with
parameters `k`, `lambda`, and `omega`.

## Usage

``` r
dzinb(x, k, lambda, omega, log = FALSE)
pzinb(q, k, lambda, omega, lower.tail = TRUE, log.p = FALSE)
qzinb(p, k, lambda, omega, lower.tail = TRUE, log.p = FALSE)
rzinb(n, k, lambda, omega)
```

## Arguments

- x, q:

  vector of quantiles.

- p:

  vector of probabilities.

- n:

  number of random values to return.

- k:

  dispersion parameter.

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

`dzinb` gives the density, `pzinb` gives the distribution function,
`qzinb` gives the quantile function, and `rzinb` generates random
deviates.

## See also

[`dzip`](https://mingstat.github.io/ZIM/reference/dpqr-zip.md),
[`pzip`](https://mingstat.github.io/ZIM/reference/dpqr-zip.md),
[`qzip`](https://mingstat.github.io/ZIM/reference/dpqr-zip.md), and
[`rzip`](https://mingstat.github.io/ZIM/reference/dpqr-zip.md) for the
zero-inflated Poisson (ZIP) distribution.

## Examples

``` r
dzinb(x = 0:10, k = 1, lambda = 1, omega = 0.5)
#>  [1] 0.7500000000 0.1250000000 0.0625000000 0.0312500000 0.0156250000
#>  [6] 0.0078125000 0.0039062500 0.0019531250 0.0009765625 0.0004882812
#> [11] 0.0002441406
pzinb(q = c(1, 5, 9), k = 1, lambda = 1, omega = 0.5)
#> [1] 0.8750000 0.9921875 0.9995117
qzinb(p = c(0.25, 0.50, 0.75), k = 1, lambda = 1, omega = 0.5)
#> [1] 0 0 0
set.seed(123)
rzinb(n = 100, k = 1, lambda = 1, omega = 0.5)
#>   [1] 0 0 1 0 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 4 1 0
#>  [38] 1 1 0 0 1 4 0 1 6 1 2 0 0 0 0 0 1 0 0 0 0 0 3 0 1 0 0 0 1 0 0 0 4 0 0 0 0
#>  [75] 0 2 0 0 3 0 0 0 1 0 1 0 0 0 0 2 0 0 0 0 2 4 0 0 0 0
```
