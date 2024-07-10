
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Analyzer

<!-- badges: start -->
<!-- badges: end -->

The goal of Analyzer is to help with text analyzing

## Installation

You can install the development version of Analyzer from
[GitHub](https://github.com/itmeandy/Analyzer) with:

``` r
# install.packages("devtools")
devtools::install_github("itmeandy/Analyzer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Analyzer)
## basic example code
text <- "Hello there, this shall be Andys simple example!"
cleaned_text <- clean_text(text, TRUE, TRUE, TRUE)
print(cleaned_text)
#> [1] "hello there this shall be andys simple example"
```

``` r
Information <- word_amount_ngrams(cleaned_text, 2)
print(Information)
#> $word_freq
#> words
#>   andys      be example   hello   shall  simple   there    this 
#>       1       1       1       1       1       1       1       1 
#> 
#> $ngrams
#> [1] "hello there"    "there this"     "this shall"     "shall be"      
#> [5] "be andys"       "andys simple"   "simple example"
```

``` r
count_shall <- check_word_frequency(Information, "shall")
print(count_shall)
#> [1] 1
```
