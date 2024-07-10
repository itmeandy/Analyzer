word_amount_ngrams <- function(text, n = 1) {
  words <- unlist(strsplit(text, "\\s+"))

  word_freq <- table(words)


  ngrams <- function(words, n) {
    if (length(words) < n) return(character(0))
    sapply(seq_along(words)[1:(length(words) - n + 1)], function(i) {
      paste(words[i:(i + n - 1)], collapse = " ")
    })
  }

  return(list(
    word_freq = word_freq,
    ngrams = ngrams(words, n)
  ))
}
