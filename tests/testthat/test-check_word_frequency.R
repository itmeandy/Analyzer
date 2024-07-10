test_that("test check_word_frequency", {
  text <- c("this is our second Test!", "we will will will be having two Sentences aswell.")
  summary <- word_amount_ngrams(text, 1)
  count <- check_word_frequency(summary, "will")
  expect_equal(count, 3)
})

test_that("test check_word_frequency2", {
  text <- "the cat saw the cat chase the mouse"
  summary <- word_amount_ngrams(text, 2)
  count <- check_word_frequency(summary, "the")
  count2 <- check_word_frequency(summary, "cat")
  count3 <- check_word_frequency(summary, "saw")
  count4 <- check_word_frequency(summary, "chase")
  count5 <- check_word_frequency(summary, "mouse")
  #wort das nicht enthalten ist
  count6 <- check_word_frequency(summary, "hello")
  expect_equal(count, 3)
  expect_equal(count2, 2)
  expect_equal(count3, 1)
  expect_equal(count4, 1)
  expect_equal(count5, 1)
  expect_equal(count6, 0)
})
