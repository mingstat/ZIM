# Auxiliary for Controlling DZIM Fitting

Auxiliary function for
[`dzim`](https://mingstat.github.io/ZIM/reference/dzim.md) fitting.
Typically only used internally by
[`dzim.fit`](https://mingstat.github.io/ZIM/reference/dzim.fit.md), but
may be used to construct a control argument for either function.

## Usage

``` r
dzim.control(
  dist = c("poisson", "nb", "zip", "zinb"),
  trace = FALSE,
  start = NULL,
  order = 1,
  mu0 = rep(0, order),
  Sigma0 = diag(1, order),
  N = 1000,
  R = 1000,
  niter = 500
)
```

## Arguments

- dist:

  count model family

- trace:

  logical; if TRUE, display iteration history.

- start:

  initial parameter values.

- order:

  autoregressive order.

- mu0:

  mean vector for initial state.

- Sigma0:

  covariance matrix for initial state.

- N:

  number of particiles in particle filtering.

- R:

  number of replications in particle smoothing.

- niter:

  number of iterations.

## Note

The default values of `N`, `R`, and `niter` are chosen based on our
experience. In some cases, `N` = 500, `R` = 500, and `niter` = 200 might
be sufficient. The
[`dzim.plot`](https://mingstat.github.io/ZIM/reference/dzim.plot.md)
function should always be used for convergence diagnostics.

## See also

[`dzim`](https://mingstat.github.io/ZIM/reference/dzim.md),
[`dzim.fit`](https://mingstat.github.io/ZIM/reference/dzim.fit.md),
[`dzim.filter`](https://mingstat.github.io/ZIM/reference/dzim.filter.md),
[`dzim.smooth`](https://mingstat.github.io/ZIM/reference/dzim.smooth.md),
[`dzim.sim`](https://mingstat.github.io/ZIM/reference/dzim.sim.md),
[`dzim.plot`](https://mingstat.github.io/ZIM/reference/dzim.plot.md)
