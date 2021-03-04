library(XML)
library(rvest)
url <- NULL; node <- NULL; text <- NULL; comicName <- NULL; comicSummary <- NULL; comicGrade <- NULL;
for (i in 1:20) {
  url <- "https://comic.naver.com/genre/bestChallenge.nhn?&page="
  url <- paste0(url,i)
  readurl <- read_html(url)
  # comicName
  node <- html_nodes(readurl,'div.challengeInfo > h6 > a')
  text <- html_text(node, trim=T)
  comicName <- c(comicName, text)
  # comicSummary
  node <- html_nodes(readurl,'div.summary')
  text <- html_text(node)
  comicSummary <- c(comicSummary, text)
  # comicGrade
  node <- html_nodes(readurl,'div.rating_type > strong')
  text <- html_text(node)
  comicGrade <- c(comicGrade, text)
}
length(comicName)
length(comicSummary)
length(comicGrade)

page <- data.frame(comicName, comicSummary, comicGrade)
View(page)
write.csv(page, "output/navercomic.csv")


# 실수했던 부분
# 1. 변수를 초기화 하지 않았기 때문에 데이터양의 차이가 지속적으로 발생하였음.
# 2. 반복문을 사용할 때 새로운 변수를 이용하여 데이터를 축적하는 것을 생각 못하였음.
# 3. css 속성을 잘못 받아왔기 때문에 html_nodes의 결과값이 NULL이 발생하였음.

