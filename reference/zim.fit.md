# Fitter Function for Zero-Inflated Models

`zim.fit` is the basic computing engine called by
[`zim`](https://mingstat.github.io/ZIM/reference/zim.md) used to fit
zero-inflated models. This should usually *not* be used directly unless
by experienced users.

## Usage

``` r
zim.fit(
  y,
  X,
  Z,
  weights = rep(1, nobs),
  offset = rep(0, nobs),
  control = zim.control(...),
  ...
)
```

## Arguments

- y:

  response variable.

- X:

  design matrix for log-linear part.

- Z:

  design matrix for logistic part.

- weights:

  an optional vector of 'prior weights' to be used in the fitting
  process.

- offset:

  offset variable

- control:

  control arguments from
  [`zim.control`](https://mingstat.github.io/ZIM/reference/zim.control.md).

- ...:

  additional argumetns.

## See also

[`zim`](https://mingstat.github.io/ZIM/reference/zim.md),
[`zim.control`](https://mingstat.github.io/ZIM/reference/zim.control.md)
