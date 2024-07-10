library(usethis)
library(devtools)
#load_all()
check()
document()
#install()

library(Analyzer)
use_testthat()
use_test("word_amount_ngrams")

text_data <- "The purple rabbit danced wildly, with the invisible cheese,
    under the singing tree."
cleaned_text <- clean_text(text_data, remove_stopwords = TRUE, to_lower = TRUE, remove_punctuation =  TRUE)
print(cleaned_text)
?word_amount_ngrams
test()
text <- "Hallo mein, name name ist Andreas!!"
clean <- clean_text(text)
print(clean)
summary <- word_amount_ngrams(clean, 1)
print(summary)
check_word_frequency(summary, "name")
