# Fitting Dynamic Zero-Inflated Models

`dzim` is used to fit dynamic zero-inflated models.

## Usage

``` r
dzim(
  formula,
  data,
  subset,
  na.action,
  weights = 1,
  offset = 0,
  control = dzim.control(...),
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

  control arguments from
  [`dzim.control`](https://mingstat.github.io/ZIM/reference/dzim.control.md)

- ...:

  additional arguments

## See also

[`dzim.fit`](https://mingstat.github.io/ZIM/reference/dzim.fit.md),
[`dzim.filter`](https://mingstat.github.io/ZIM/reference/dzim.filter.md),
[`dzim.smooth`](https://mingstat.github.io/ZIM/reference/dzim.smooth.md),
[`dzim.control`](https://mingstat.github.io/ZIM/reference/dzim.control.md),
[`dzim.sim`](https://mingstat.github.io/ZIM/reference/dzim.sim.md),
[`dzim.plot`](https://mingstat.github.io/ZIM/reference/dzim.plot.md)
