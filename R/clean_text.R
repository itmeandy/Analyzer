#' Clean some text for analysing
#'
#' use this function to clean your String, by removing stopwords, changing it
#' to all lower case or remove its punctuation
#'
#' @param text your String to clean
#' @param remove_stopwords a bool to set if you want to remove stopwords
#' @param to_lower a bool to set if you want to make to text to all lower case
#' @param remove_punctuation a bool to set if you want to remove punctuation
#'
#' @return A string of your cleaned text
#' @export
#'
#' @examples
#' text <- "Hey, my name is andy. What is your name?"
#' clean_text(text, remove_stopwords = FALSE, to_lower = TRUE, remove_punctuation = TRUE)
clean_text <- function(text, remove_stopwords = TRUE, to_lower = TRUE, remove_punctuation = TRUE) {
  stopwords <- c("the", "is", "in", "and", "to", "a")
  if (to_lower) {
    text <- tolower(text)
  }
  if (remove_punctuation) {
    text <- gsub("[[:punct:]]", "", text)
  }
  if (remove_stopwords) {
    words <- strsplit(text, "\\s+")[[1]]
    cleaned_words <- words[!words %in% stopwords]
    text <- paste(cleaned_words, collapse = " ")

  }
  return(text)
}
