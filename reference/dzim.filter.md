# Particle Filtering for DZIM

Function to implement the particle filtering method proposed by Gordsill
et al. (1993).

## Usage

``` r
dzim.filter(y, X, w, para, control)
```

## Arguments

- y:

  response variable.

- X:

  design matrix.

- w:

  `log(w)` is used as an offset variable in the linear predictor.

- para:

  model parameters.

- control:

  control arguments.

## References

Gordon, N. J., Salmond, D. J., and Smith, A. F. M. (1993). Novel
approach to nonlinear/non-Gaussian Bayesian state estimation. *IEEE
Proceedings*, **140**, 107-113.

## See also

[`dzim`](https://mingstat.github.io/ZIM/reference/dzim.md),
[`dzim.fit`](https://mingstat.github.io/ZIM/reference/dzim.fit.md),
[`dzim.smooth`](https://mingstat.github.io/ZIM/reference/dzim.smooth.md),
[`dzim.control`](https://mingstat.github.io/ZIM/reference/dzim.control.md),
[`dzim.sim`](https://mingstat.github.io/ZIM/reference/dzim.sim.md),
[`dzim.plot`](https://mingstat.github.io/ZIM/reference/dzim.plot.md)
