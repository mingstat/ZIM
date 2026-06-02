# Fitting Zero-Inflated Models

`zim` is used to fit zero-inflated models.

## Usage

``` r
zim(
  formula,
  data,
  subset,
  na.action,
  weights = 1,
  offset = 0,
  control = zim.control(...),
  ...
)
```

## Arguments

- formula:

  an objective of class
  "[`formula`](https://rdrr.io/r/stats/formula.html)".

- data:

  an optional dataframe, list or environment containing the variables in
  the model.

- subset:

  an optional vector specifying a subset of observations to be used in
  the fitting process.

- na.action:

  a function which indicates what should happen when the data contain
  `NA`s.

- weights:

  an optional vector of 'prior weights' to be used in the fitting
  process.

- offset:

  this can be used to specify a priori known component to be included in
  the linear predictor during fitting.

- control:

  control arguments.

- ...:

  additional arguments.

## Note

`zim` is very similar to
[`zeroinfl`](https://rdrr.io/pkg/pscl/man/zeroinfl.html) from the `pscl`
package. Both functions can be used to fit observation-driven models for
zero-inflated time series.

## See also

[`zim.fit`](https://mingstat.github.io/ZIM/reference/zim.fit.md),
[`zim.control`](https://mingstat.github.io/ZIM/reference/zim.control.md)
