check_word_frequency <- function(summary, word) {
  count <- ifelse(word %in% names(summary$word_freq), summary$word_freq[[word_to_check]], 0)
  return(count)
}
