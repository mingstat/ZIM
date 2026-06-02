# Example: Syphilis Series

Weekly number of syphilis cases in the United States from 2007 to 2010.

## Format

A data frame with 209 observations on the following 69 variables.

|        |                      |
|--------|----------------------|
| `year` | Year                 |
| `week` | Week                 |
| `a1`   | **United States**    |
| `a2`   | **New England**      |
| `a3`   | Connecticut          |
| `a4`   | Maine                |
| `a5`   | Massachusetts        |
| `a6`   | New Hampshire        |
| `a7`   | Rhode Island         |
| `a8`   | Vermont              |
| `a9`   | **Mid. Atlantic**    |
| `a10`  | New Jersey           |
| `a11`  | New York (Upstate)   |
| `a12`  | New York City        |
| `a13`  | Pennsylvania         |
| `a14`  | **E.N. Central**     |
| `a15`  | Illinois             |
| `a16`  | Indiana              |
| `a17`  | Michigan             |
| `a18`  | Ohio                 |
| `a19`  | Wisconsin            |
| `a20`  | **W.N. Central**     |
| `a21`  | Iowa                 |
| `a22`  | Kansas               |
| `a23`  | Minnesota            |
| `a24`  | Missouri             |
| `a25`  | Nebraska             |
| `a26`  | North Dakota         |
| `a27`  | South Dakota         |
| `a28`  | **S. Atlantic**      |
| `a29`  | Delaware             |
| `a30`  | District of Columbia |
| `a31`  | Florida              |
| `a32`  | Georgia              |
| `a33`  | Maryland             |
| `a34`  | North Carolina       |
| `a35`  | South Carolina       |
| `a36`  | Virginia             |
| `a37`  | West Virginia        |
| `a38`  | **E.S. Central**     |
| `a39`  | Alabama              |
| `a40`  | Kentucky             |
| `a41`  | Mississippi          |
| `a42`  | Tennessee            |
| `a43`  | **W.S. Central**     |
| `a44`  | Arkansas             |
| `a45`  | Louisana             |
| `a46`  | Oklahoma             |
| `a47`  | Texas                |
| `a48`  | **Moutain**          |
| `a49`  | Arizona              |
| `a50`  | Colorado             |
| `a51`  | Idaho                |
| `a52`  | Montana              |
| `a53`  | Nevada               |
| `a54`  | New Mexico           |
| `a55`  | Utah                 |
| `a56`  | Wyoming              |
| `a57`  | **Pacific**          |
| `a58`  | Alaska               |
| `a59`  | California           |
| `a60`  | Hawaii               |
| `a61`  | Oregon               |
| `a62`  | Washington           |
| `a63`  | American Samoa       |
| `a64`  | C.N.M.I.             |
| `a65`  | Guam                 |
| `a66`  | Peurto Rico          |
| `a67`  | U.S. Virgin Islands  |

## Source

CDC Morbidity and Mortality Weekly Report (<https://www.cdc.gov/MMWR/>).

## Note

C.N.M.I.: Commonwealth of Northern Mariana Islands.

## Examples

``` r
data(syph)
plot(ts(syph$a33), ylab = "Count", main = "Maryland", las = 1)

```
