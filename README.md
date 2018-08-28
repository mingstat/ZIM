# Overview

__Zero-Inflated Models (ZIM) for Count Time Series with Excess Zeros__

Analyze count time series with excess zeros. Two types of statistical models are supported: Markov regression by Yang et al. (2013) and state-space models by Yang et al. (2015). They are also known as observation-driven and parameter-driven models respectively in the time series literature. The functions used for Markov regression or observation-driven models can also be used to fit ordinary regression models with independent data under the zero-inflated Poisson (ZIP) or zero-inflated negative binomial (ZINB) assumption. Besides, the package contains some miscellaneous functions to compute density, distribution, quantile, and generate random numbers from ZIP and ZINB distributions.

# Installation

```r
# Install stable version from CRAN
install.packages("ZIM")

# Install development version from GitHub
devtools::install_github("biostatstudio/ZIM")

# Load package into R
library(ZIM)
```

# References

* Yang, M., Zamba, G. K. D. and Cavanaugh, J. E. (2013). Markov Regression Models for Count Time Series with Excess Zeros: A Partial Likelihood Approach. _Statistical Methodology_, 14, 26-38.

* Yang, M., Cavanaugh, J. E. and Zamba, G. K. D. (2015). State-Space Models for Count Time Series with Excess Zeros. _Statistical Modelling_, 15, 70-90.

