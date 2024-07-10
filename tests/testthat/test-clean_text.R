test_that("clean_text works", {
  text_data <- "This is a Text. Another test sentence. Test this function"
  cleaned_text <- clean_text(text_data, remove_stopwords = TRUE, to_lower = TRUE, remove_punctuation =  TRUE)
  expected_output <- "this text another test sentence test this function"
  expect_true(identical(cleaned_text, expected_output))
})

test_that("clean_text various cases", {

  test_cases <- list(
    "The quick brown fox jumps over the lazy dog. this is another test sentence!",
    "Here's an example: How well does it work? Cleaning texts can be tricky, indeed!",
    "Stopwords should be removed, right? Yes, they should be gone."
  )

  expected_outputs <- list(
    "quick brown fox jumps over lazy dog this another test sentence",
    "heres an example how well does it work cleaning texts can be tricky indeed",
    "stopwords should be removed right yes they should be gone"
  )

  for (i in seq_along(test_cases))
  {
    cleaned <- clean_text(test_cases[[i]], remove_stopwords = TRUE, to_lower = TRUE, remove_punctuation =  TRUE)
    expect_equal(cleaned, expected_outputs[[i]])
  }
})
