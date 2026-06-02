# Particle Smoothing for DZIM

Function to implement the particle smoothing method proposed by Gordsill
et al. (2004).

## Usage

``` r
dzim.smooth(y, X, w, para, control)
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

Gordsill, S. J., Doucet, A., and West, M. (2004). Monte Carlo smoothing
for nonlinear time series. *Journal of the American Statistical
Association*, **99**, 156-168.

## See also

[`dzim`](https://mingstat.github.io/ZIM/reference/dzim.md),
[`dzim.fit`](https://mingstat.github.io/ZIM/reference/dzim.fit.md),
[`dzim.filter`](https://mingstat.github.io/ZIM/reference/dzim.filter.md),
[`dzim.control`](https://mingstat.github.io/ZIM/reference/dzim.control.md),
[`dzim.sim`](https://mingstat.github.io/ZIM/reference/dzim.sim.md),
[`dzim.plot`](https://mingstat.github.io/ZIM/reference/dzim.plot.md)
