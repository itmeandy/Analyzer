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
