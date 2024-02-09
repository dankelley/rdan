
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rdan

<!-- badges: start -->

[![R-CMD-check](https://github.com/dankelley/rdan/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/dankelley/rdan/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of rdan is to provide a simple scheme for saving results into
an RDA file that acts like a notebook.

## Installation

You can install the development version of rdan from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("dankelley/rdan")
```

## Example

This shows how to store a number (with a name that is not valid for R)
and something quite a lot more fun – 60 years since this package was
created!

``` r
library(rdan)
useRDA("sample.rda")
storeRDA("2pi", 2 * pi, "circle perimeter divided by radius")
retrieveRDA("2pi")
#> $value
#> [1] 6.283185
#> 
#> $comment
#> [1] "circle perimeter divided by radius"
#> 
#> $context
#> [1] "/Users/kelley/git/rdan"
storeRDA("beatles on Ed Sullivan Show", as.Date("1964-02-09"), "Beatlemania starts")
retrieveRDA("beatles on Ed Sullivan Show")
#> $value
#> [1] "1964-02-09"
#> 
#> $comment
#> [1] "Beatlemania starts"
#> 
#> $context
#> [1] "/Users/kelley/git/rdan"
file.remove("sample.rda") # clean up
#> [1] TRUE
```
