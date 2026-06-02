# Zero-Inflated Models for Count Time Series with Excess Zeros

Fits observation-driven and parameter-driven models for count time
series with excess zeros.

## Details

The package `ZIM` contains functions to fit statistical models for count
time series with excess zeros (Yang et al., 2013, 2015). The main
function for fitting observation-driven models is
[`zim`](https://mingstat.github.io/ZIM/reference/zim.md), and the main
function for fitting parameter-driven models is
[`dzim`](https://mingstat.github.io/ZIM/reference/dzim.md).

## Note

The observation-driven models for zero-inflated count time series can
also be fit using the function
[`zeroinfl`](https://rdrr.io/pkg/pscl/man/zeroinfl.html) from the `pscl`
package (Zeileis et al., 2008). Fitting parameter-driven models is based
on sequential Monte Carlo (SMC) methods, which are computer intensive
and could take several hours to estimate the model parameters.

## References

Yang, M., Cavanaugh, J. E., and Zamba, G. K. D. (2015). State-space
models for count time series with excess zeros. *Statistical Modelling*,
**15**:70-90  
  
Yang, M., Zamba, G. K. D., and Cavanaugh, J. E. (2013). Markov
regression models for count time series with excess zeros: A partial
likelihood approach. *Statistical Methodology*, **14**:26-38.  
  
Zeileis, A., Kleiber, C., and Jackman, S. (2008). Regression models for
count data in `R`. *Journal of Statistical Software*, **27**(8).
