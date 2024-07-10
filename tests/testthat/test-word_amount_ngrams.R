test_that("word_amount_ngrams works with n = 2", {
  text <- "people talk about people talking about people"
  summary <- word_amount_ngrams(text, 2)
  expect_true("people" %in% names(summary$word_freq))
  expect_true("talk" %in% names(summary$word_freq))
  expect_true("about" %in% names(summary$word_freq))
  expect_true("talking" %in% names(summary$word_freq))
  expect_true("people talk" %in% summary$ngrams)
  expect_true("talk about" %in% summary$ngrams)
  expect_true("about people" %in% summary$ngrams)
  expect_true("people talking" %in% summary$ngrams)
  expect_true("talking about" %in% summary$ngrams)
  #da about people vorkommt hier ein check,
  #dass es an den richtigen stellen ist
  expect_true(identical("about people", summary$ngrams[3]))
  expect_true(identical("about people", summary$ngrams[6]))
  expect_equal(3, get_word_count(summary, "people"))
  expect_equal(2, get_word_count(summary, "about"))
  expect_equal(1, get_word_count(summary, "talk"))
  expect_equal(1, get_word_count(summary, "talking"))
})

test_that("word_amount_ngrams works with n = 3", {
  text <- "people talk about people talking about people"
  summary <- word_amount_ngrams(text, 3)
  expect_true("people" %in% names(summary$word_freq))
  expect_true("talk" %in% names(summary$word_freq))
  expect_true("about" %in% names(summary$word_freq))
  expect_true("talking" %in% names(summary$word_freq))
  expect_true("people talk about" %in% summary$ngrams)
  expect_true("talk about people" %in% summary$ngrams)
  expect_true("about people talking" %in% summary$ngrams)
  expect_true("people talking about" %in% summary$ngrams)
  expect_true("talking about people" %in% summary$ngrams)
})
