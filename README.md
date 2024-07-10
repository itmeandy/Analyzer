
# Analyzer

<!-- badges: start -->
<!-- badges: end -->

The goal of Analyzer is to ...

## Installation

You can install the development version of Analyzer from [GitHub](https://github.com/itmeandy/Analyzer) with:

``` r
# install.packages("devtools")
devtools::install_github("itmeandy/Package")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Analyzer)
## basic example code
text <- "Hello there, this shall be Andys simple example!"
cleaned_text <- clean_text(text, TRUE, TRUE, TRUE)
print(cleaned_text)
Information <- word_amount_ngrams(cleaned_text, 2)
print(Information)
count_shall <- check_word_frequency(Information, "shall")
print(count_shall)



```

