# Trace Plots from DZIM

Function to display trace plots from a dynamic zero-inflated model.

## Usage

``` r
dzim.plot(object, k.inv = FALSE, sigma.sq = FALSE, ...)
```

## Arguments

- object:

  objective from
  [`dzim`](https://mingstat.github.io/ZIM/reference/dzim.md) or
  [`dzim.fit`](https://mingstat.github.io/ZIM/reference/dzim.fit.md).

- k.inv:

  logical; indicating whether an inverse transformation is needed for
  the dispersion parameter.

- sigma.sq:

  logical; indicating whether a square transformation is needed for the
  standard deviation parameter.

- ...:

  additional arguments.
