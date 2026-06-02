# Simulate Data from DZIM

Simulate data from a dynamic zero-inflated model.

## Usage

``` r
dzim.sim(X, w, omega, k, beta, phi, sigma, mu0, Sigma0)
```

## Arguments

- X:

  design matrix.

- w:

  `log(w)` is used as an offset variable in the linear predictor.

- omega:

  zero-inflation parameter.

- k:

  dispersion parameter.

- beta:

  regression coefficients.

- phi:

  autoregressive coefficients.

- sigma:

  standard deviation.

- mu0:

  mean vector of initial state.

- Sigma0:

  covariance matrix of initial state.

## See also

[`dzim`](https://mingstat.github.io/ZIM/reference/dzim.md),
[`dzim.fit`](https://mingstat.github.io/ZIM/reference/dzim.fit.md),
[`dzim.filter`](https://mingstat.github.io/ZIM/reference/dzim.filter.md),
[`dzim.smooth`](https://mingstat.github.io/ZIM/reference/dzim.smooth.md),
[`dzim.control`](https://mingstat.github.io/ZIM/reference/dzim.control.md),
[`dzim.plot`](https://mingstat.github.io/ZIM/reference/dzim.plot.md)
