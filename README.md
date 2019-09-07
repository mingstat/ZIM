__Zero-Inflated Models (ZIM) for Count Time Series with Excess Zeros__


[![CRAN Status Badge](http://www.r-pkg.org/badges/version/ZIM)](https://cran.r-project.org/package=ZIM)
[![CRAN Downloads Total](https://cranlogs.r-pkg.org/badges/grand-total/ZIM)](https://cran.r-project.org/package=ZIM)

## Overview

Analyze count time series with excess zeros. Two types of statistical models are supported: Markov regression by Yang et al. (2013) <[doi:10.1016/j.stamet.2013.02.001](https://doi.org/10.1016/j.stamet.2013.02.001)> and state-space models by Yang et al. (2015) <[doi:10.1177/1471082X14535530](https://doi.org/10.1177/1471082X14535530)>. They are also known as observation-driven and parameter-driven models respectively in the time series literature. The functions used for Markov regression or observation-driven models can also be used to fit ordinary regression models with independent data under the zero-inflated Poisson (ZIP) or zero-inflated negative binomial (ZINB) assumption. Besides, the package contains some miscellaneous functions to compute density, distribution, quantile, and generate random numbers from ZIP and ZINB distributions.

## Installation

### Stable Version

Install stable version from CRAN:

```{r, eval=FALSE}
install.packages("ZIM")
```

### Development Version

Install development version from GitHub:

```{r, eval=FALSE}
# install.packages("devtools")
devtools::install_github("biostatio/ZIM")
```

## References

- M Yang, GKD Zamba, JE Cavanaugh. Markov regression models for count time series with excess zeros: A partial likelihood approach. Statistical Methodology, 2013, 14:26–38.  <[doi:10.1016/j.stamet.2013.02.001](https://doi.org/10.1016/j.stamet.2013.02.001)> 

- M Yang, JE Cavanaugh, GKD Zamba. State-space models for count time series with excess zeros. Statistical Modelling, 2015, 15(1):70–90. <[doi:10.1177/1471082X14535530](https://doi.org/10.1177/1471082X14535530)>

