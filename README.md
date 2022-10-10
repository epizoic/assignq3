
<!-- README.md is generated from README.Rmd. Please edit that file -->

# assignq3

<!-- badges: start -->
<!-- badges: end -->

The goal of assignq3 is to simulate a queuing system given a dataset and
the number of servers

## Installation

You can install the development version of assignq3 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("epizoic/assignq3")
```

## Example

This is a basic example which shows how to use the simulation:

``` r
library(assignq3)
library(tibble)
data(bank)
str(bank)
#> 'data.frame':    100 obs. of  2 variables:
#>  $ arrival_time: num  119 134 326 339 372 ...
#>  $ service_time: num  29.8 155 30.7 85.5 280.3 ...
Multiserver(bank$arrival_time, bank$service_time, NumServers = 3)
#> # A tibble: 100 × 4
#>    Arrivals ServiceBegins ChosenServer ServiceEnds
#>       <dbl>         <dbl>        <dbl>       <dbl>
#>  1     119.          119.            1        149.
#>  2     134.          134.            2        289.
#>  3     326.          326.            3        356.
#>  4     339.          339.            1        424.
#>  5     372.          372.            2        652.
#>  6     396.          396.            3        474.
#>  7     400.          424.            1        459.
#>  8     491.          491.            1        650.
#>  9     531.          531.            3        762.
#> 10     628.          650.            1        756.
#> # … with 90 more rows
#> # ℹ Use `print(n = ...)` to see more rows
```
