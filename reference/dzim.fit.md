# Fitter Function for Dynamic Zero-Inflated Models

`dzim.fit` is the basic computing engine called by
[`dzim`](https://mingstat.github.io/ZIM/reference/dzim.md) used to fit
dynamic zero-inflated models. This should usually *not* be used directly
unless by experienced users.

## Usage

``` r
dzim.fit(y, X, offset = rep(0, n), control = dzim.control(...), ...)
```

## Arguments

- y:

  response variable.

- X:

  design matrix.

- offset:

  offset variable.

- control:

  control arguments.

- ...:

  additional arguments.

## See also

[`dzim`](https://mingstat.github.io/ZIM/reference/dzim.md),
[`dzim.control`](https://mingstat.github.io/ZIM/reference/dzim.control.md),
[`dzim.filter`](https://mingstat.github.io/ZIM/reference/dzim.filter.md),
[`dzim.smooth`](https://mingstat.github.io/ZIM/reference/dzim.smooth.md),
[`dzim.sim`](https://mingstat.github.io/ZIM/reference/dzim.sim.md),
[`dzim.plot`](https://mingstat.github.io/ZIM/reference/dzim.plot.md)
