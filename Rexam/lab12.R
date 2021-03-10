# [문제1]
v1 <- c('Happy', 'Birthday', 'to', 'You')
length(v1)
nchar(v1)
sum(nchar(v1))

# [문제2]
v2 <- paste(v1[1],v1[2],v1[3],v1[4])
nchar(v2)

# [문제3]
paste(LETTERS[1:10],1:10)
paste0(LETTERS[1:10],1:10)

# [문제4]
text4 <- 'Good Morning'
text4
strsplit(text4,' ')[1]
L1 <- strsplit(text4,' ')[[1]][1]
L2 <- strsplit(text4,' ')[[1]][2]
list(L1,L2)

# [문제5]
v5 <- c("Yesterday is history, tommrrow is a mystery, today is a gift!", 
        "That's why we call it the present – from kung fu Panda")
v5_1 <- gsub("[–,]", "", v5)
v5_2 <- unlist(extractNoun(v5_1))
v5_2 <- Filter(function(x) {nchar(x) >= 2}, v5_2)

# [문제6]
s1 <- "@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."
r1 <- gsub("[가-힣]","",s1)
r2 <- gsub("[[:punct:]]","",s1)
r3 <- gsub("[[:punct:]]|[가-힣]","",s1)
r4 <- gsub("100","백",s1)

# [문제7]
v7 <- readLines("output/hotel.txt")
v7_word <- unlist(extractNoun(v7))
v7_filter <- Filter(function(x) {nchar(x) >= 2}, v7_word)
v7_filter
v7_table <- table(v7_filter)
v7_table
v7_sort <- sort(v7_table, T)
v7_top10 <- v7_sort[1:10]
v7_top10
df <- data.frame(v7_top10)
df$v7_filter -> wname
df$Freq -> wcount
df2 <- data.frame(wname, wcount)
View(df2)
write.csv(df2, "output/hotel_top_word.csv")

