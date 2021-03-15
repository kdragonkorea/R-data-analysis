library(RSelenium)
library(httr)
library(XML)
library(rvest)

# 크롬 연결/오픈
remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()

# url 접속
remDr$navigate("https://www.instagram.com/")
Sys.sleep(2)

# insta_email,insta_pw 입력 / btn 클릭
insta_email <- remDr$findElement(using='css selector','div:nth-child(1) > div > label')
insta_email$clickElement()
insta_email$sendKeysToElement(list('kdragonkorea@gmail.com'))

insta_pw <- remDr$findElement(using='css selector','div:nth-child(2) > div > label')
insta_pw$clickElement()
insta_pw$sendKeysToElement(list('kdragontestr'))
login_btn <- remDr$findElement(using='css selector','div:nth-child(3) > button')
login_btn$clickElement()
Sys.sleep(2)

# 키워드 검색
insta_search <- remDr$findElement(using='css selector','nav > div._8MQSO.Cx7Bp > div > div > div.LWmhU._0aCwM > input')
insta_search$clickElement()
insta_search$sendKeysToElement(list('#강서구맛집'))
Sys.sleep(2)

# 최상단 태그 클릭
tag1 <- remDr$findElement(using='css selector','div._8MQSO.Cx7Bp > div > div > div.LWmhU._0aCwM > div.yPP5B > div > div._01UL2 > div > div:nth-child(1)')
tag1$clickElement()
