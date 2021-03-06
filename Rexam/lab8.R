# [xpath 방법]
readurl <- read_html("http://media.daum.net/ranking/popular/")
p <- htmlParse(readurl)
newstitle <- xpathSApply(p,'//*[@id="mArticle"]/div/ul/li/div/strong/a', xmlValue)
newstitle
newspapername <- xpathSApply(p,'//*[@id="mArticle"]/div/ul/li/div/strong/span', xmlValue)
newspapername

page <- data.frame(newstitle, newspapername)
View(page)
write.csv(page, "output/daumnews.csv")


# [rvest 방법]
# newstitle
for (index in 1:10) {
  readurl = html_nodes(read_html("http://media.daum.net/ranking/popular/"), '#mArticle > div.rank_news > ul.list_news2 > li > div.cont_thumb > strong > a')
  title <- html_text(readurl)
  newstitle[index] <- title # 왜 52개가 추출되는건가 ??
}

# newspapername
readurl = html_nodes(read_html("http://media.daum.net/ranking/popular/"), 'span.info_news')
newspapername = html_text(readurl)
newspapername

page <- data.frame(newstitle, newspapername)
View(page)
write.csv(page, "output/daumnews.csv")

#__________________________________________________________________________

# [풀이 리뷰]
# CASE1
library(rvest)

text<- NULL; newstitle<-NULL; newspapername<-NULL; news<-NULL; page=NULL
url<- "http://media.daum.net/ranking/popular/"
text <- read_html(url,  encoding="UTF-8")
text                    

for (index in 1:50) {   
  # 뉴스의 제목
  ntitle <- html_node(text, paste0("#mArticle > div.rank_news > ul.list_news2 > li:nth-child(", index, ") > div.cont_thumb > strong > a"))
  title <- html_text(ntitle)
  newstitle[index] <- title
  # 신문사명칭                   
  nname <- html_node(text, paste0("#mArticle > div.rank_news > ul.list_news2 > li:nth-child(", index,") > div.cont_thumb > strong > span"))
  name <- html_text(nname)
  newspapername <- c(newspapername, name)
} 
page <- data.frame(newstitle, newspapername)
View(page)
write.csv(page, "output/news_ranking.csv")    



# CASE2
news <- NULL; newstitle <- NULL;  newspapername <- NULL;

news <- read_html('http://media.daum.net/ranking/popular/')

for (index in 1:50) {
  #타이틀
  node <- html_text(html_node(news, paste0('#mArticle > div.rank_news > ul.list_news2 > li:nth-child(', index, ') > div.cont_thumb > strong > a')))
  newstitle[index] <- node 
  
  #신문사
  node <- html_text(html_node(news, paste0('#mArticle > div.rank_news > ul.list_news2 > li:nth-child(', index, ') > div.cont_thumb > strong > span')))
  newspapername[index] <- node
}
daumnews <- data.frame(newstitle, newspapername)
write.csv(daumnews, 'output/daumnews.csv')


# CASE3
daum <- read_html('https://news.daum.net/ranking/popular/', encoding = "UTF-8")
url1 <- 'div.rank_news > ul.list_news2 > li:nth-child('
url2 <- ") > div.cont_thumb > strong > a"
url3 <- 'div.rank_news > ul.list_news2 > li:nth-child('
url4 <- ') > div.cont_thumb > strong > span'
newstitle <- NULL
newspapername <- NULL
for (i in 1:50) {
  content_title <-paste(url1, i, url2, sep = "")
  content_name <- paste(url3, i, url4, sep = "")
  newstitle[i] <- html_text(html_nodes(daum, content_title))
  newspapername[i] <- html_text(html_nodes(daum, content_name))
}
newstitle
newspapername
news <- data.frame(newstitle, newspapername)
View(news)
write.csv(news, file = "output/daumnews.csv")




# CASE4
library(XML)
library(rvest)
news<- NULL; newstitle<-NULL; newscompany<-NULL; 
imsi <- read_html("http://media.daum.net/ranking/popular/")
t <- htmlParse(imsi)

#for (i in 1:50) {
news1<- xpathSApply(t,'//*[@id="mArticle"]/div/ul/li/div/strong/a', xmlValue); 
news1 

news2<- xpathSApply(t,'//*[@id="mArticle"]/div/ul/li/div/strong/span', xmlValue); 
news2
#}

news <- data.frame(newstitle=news1, newscompany=news2)
View(news)

write.csv(news, "output/daumnews.csv")



# CASE5
library(httr)
library(XML)
library(rvest)

newstitle.nodes <- html_nodes(read_html('http://media.daum.net/ranking/popular'), xpath = '//*[@id="mArticle"]/div[2]/ul[3]/li/div/strong/a')
print(newstitle.nodes)
newstitle <- html_text(newstitle.nodes)
print(newstitle)
newstitle

newspapaername.nodes <- html_nodes(read_html('http://media.daum.net/ranking/popular'), xpath = '//*[@id="mArticle"]/div[2]/ul[3]/li/div[2]/strong/span')
print(newspapaername.nodes)
newspapername <- html_text(newspapaername.nodes)
print(newspapername)

news.info <-data.frame(newstitle, newspapername) 
