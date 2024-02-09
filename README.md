
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

Here is how we might store a number for use later.

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
file.remove("sample.rda") # we don't need to store this!
#> [1] TRUE
```
