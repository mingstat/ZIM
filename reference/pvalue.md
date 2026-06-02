# Function to Compute P-value.

Function to compute p-value based on a t-statistic.

## Usage

``` r
pvalue(t, df = Inf, alternative = c("two.sided", "less", "greater"))
```

## Arguments

- t:

  t-statistic.

- df:

  degree of freedoms.

- alternative:

  type of alternatives.

## Examples

``` r
pvalue(1.96, alternative = "greater")
#> [1] 0.0249979
```
