#' use this function to get the count of a word of your word_amount_ngrams
#' output in Integer
#'
#' @param summary your word_amount_ngrams output
#' @param word the specific word that you want the frequency of
#'
#' @return A integer
#' @export
#'
#' @examples
#' text <- "this day is a great day to talk about the next day"
#' summary <- word_amount_ngrams(text, 1)
#' get_word_count(summary, word = "day")
get_word_count <- function(summary, word) {
  count <- ifelse(word %in% names(summary$word_freq), summary$word_freq[[word]], 0)
  return(count)
}
