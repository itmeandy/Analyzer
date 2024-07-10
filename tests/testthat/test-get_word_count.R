test_that("test get_word_count", {
  text <- c("this is our second Test!", "we will will will be having two Sentences aswell.")
  summary <- word_amount_ngrams(text, 1)
  count <- get_word_count(summary, "will")
  expect_equal(count, 3)
})

test_that("test get_word_count2", {
  text <- "the cat saw the cat chase the mouse"
  summary <- word_amount_ngrams(text, 2)
  count <- get_word_count(summary, "the")
  count2 <- get_word_count(summary, "cat")
  count3 <- get_word_count(summary, "saw")
  count4 <- get_word_count(summary, "chase")
  count5 <- get_word_count(summary, "mouse")
  #wort das nicht enthalten ist
  count6 <- get_word_count(summary, "hello")
  expect_equal(count, 3)
  expect_equal(count2, 2)
  expect_equal(count3, 1)
  expect_equal(count4, 1)
  expect_equal(count5, 1)
  expect_equal(count6, 0)
})
