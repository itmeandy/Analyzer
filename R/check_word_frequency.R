#' get count for a specific word of your word_amount_ngrams output
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
#' check_word_frequency(summary, word = "day")
check_word_frequency <- function(summary, word) {
  count <- ifelse(word %in% names(summary$word_freq), summary$word_freq[[word]], 0)
  return(count)
}
