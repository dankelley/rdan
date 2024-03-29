
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rdan

<!-- badges: start -->

[![R-CMD-check](https://github.com/dankelley/rdan/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/dankelley/rdan/actions/workflows/R-CMD-check.yaml)
[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![GitHub last
commit](https://img.shields.io/github/last-commit/dankelley/rdan)](https://img.shields.io/github/last-commit/dankelley/rdan)
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
and something quite a lot more fun – 60 years before this package was
created!

``` r
library(rdan)
# State name of RDA-notebook file (will be created if missing)
useRDA("sample.rda")
# Save a simple number
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
# Save a date
storeRDA("Beatlemania", as.Date("1964-02-09"), "Beatles perform on Ed Sullivan Show")
retrieveRDA("Beatlemania")
#> $value
#> [1] "1964-02-09"
#> 
#> $comment
#> [1] "Beatles perform on Ed Sullivan Show"
#> 
#> $context
#> [1] "/Users/kelley/git/rdan"
# Find names of all entries
listRDA()
#> [1] "2pi"         "Beatlemania"
# Remove notebook
file.remove("sample.rda")
#> [1] TRUE
```
