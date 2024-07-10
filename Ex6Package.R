library(usethis)
library(devtools)
#load_all()
check()
document()
#install()
text <- "Hello there, this shall be Andys simple example!"
cleaned_text <- clean_text(text, TRUE, TRUE, TRUE)
print(cleaned_text)
Information <- word_amount_ngrams(cleaned_text, 2)
print(Information)
count_shall <- check_word_frequency(Information, "shall")
print(count_shall)


use_readme_rmd()
build_readme()
library(Analyzer)
use_testthat()
use_test("word_amount_ngrams")
use_readme_md()
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
