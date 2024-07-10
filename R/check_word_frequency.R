#' get count for specific word in text information
#'
#' @param summary A list given by word_amount_ngrams function
#' @param word the specific word that you want the frequency of
#'
#' @return A integer
#' @export
#'
#' @examples
#' text <- "this day is a great day to talk about the next day"
#' summary <- word_amount_ngrams(text, 1)
#' check_word_frequency(summary, day)
check_word_frequency <- function(summary, word) {
  count <- ifelse(word %in% names(summary$word_freq), summary$word_freq[[word_to_check]], 0)
  return(count)
}
