# Auxiliary for Controlling ZIM Fitting

Auxiliary function for
[`zim`](https://mingstat.github.io/ZIM/reference/zim.md) fitting.
Typically only used internally by
[`zim.fit`](https://mingstat.github.io/ZIM/reference/zim.fit.md), but
may be used to construct a control argument for either function.

## Usage

``` r
zim.control(
  dist = c("zip", "zinb"),
  method = c("EM-NR", "EM-FS"),
  type = c("solve", "ginv"),
  robust = FALSE,
  trace = FALSE,
  start = NULL,
  minit = 10,
  maxit = 10000,
  epsilon = 1e-08
)
```

## Arguments

- dist:

  count model family.

- method:

  algorithm for parameter estimation.

- type:

  type of matrix inverse.

- robust:

  logical; if TRUE, robust standard errors will be calculated.

- trace:

  logical; if TRUE, display iteration history.

- start:

  initial parameter values.

- minit:

  minimum number of iterations.

- maxit:

  maximum number of iterations.

- epsilon:

  positive convergence tolerance.

## See also

[`zim`](https://mingstat.github.io/ZIM/reference/zim.md),
[`zim.fit`](https://mingstat.github.io/ZIM/reference/zim.fit.md)
