read_yes24 <- readLines("output/yes24.txt",encoding="UTF-8")
word_yes24 <- unlist(extractNoun(read_yes24)) # 반드시 unlist로 벡터화를 시킨다!
only_korean <- gsub("[^가-힣]", "", word_yes24)
words_2_to_4 <- Filter(function(x) {nchar(x) >= 2 & nchar(x) <= 4}, only_korean)
# Filter(function(x) {nchar(x) >= 2}, only_korean)
# Filter(function(x) {nchar(x) <= 4}, only_korean)
count <- table(words_2_to_4)
count_sort <- sort(count, T)
df_yes24 <- data.frame(count_sort)

library(wordcloud2)
wordcloud2_yes24 <- wordcloud2(data = df_yes24,size=0.5,col="random-dark")

htmltools::save_html(wordcloud2_yes24,"output/yes24.html")