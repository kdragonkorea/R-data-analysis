library(RSelenium)

remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()

remDr$navigate("http://gs25.gsretail.com/gscvs/ko/products/event-goods")
goodsname <- NULL; goodsprice <- NULL; nextpage <- NULL

# 첫 페이지에서 2+1 메뉴로 이동
two_to_one <- remDr$findElement(using='css selector', "div > ul > li:nth-child(2) > span")
two_to_one$clickElement()

# 2+1의 메뉴에서 모든 페이지 정보 가져오기
repeat {
  name <- remDr$findElements(using='css selector','div > div:nth-child(5) > ul > li > div > p.tit')
  name <- sapply(name,function(x){x$getElementText()})
  goodsname <- c(goodsname, unlist(name))
  print(length(goodsname))
  
  price <- remDr$findElements(using='css selector','div > div:nth-child(5) > ul > li > div > p.price > span')
  price <- sapply(price,function(x){x$getElementText()})
  goodsprice <- c(goodsprice, unlist(price))
  print(length(goodsprice))
  
  # nextpage <- remDr$findElement(using='css selector', 'div.cnt_section.mt50 > div > div > div:nth-child(5) > div > a.next')
  
  # 마지막 페이지에서 페이지 이동 멈추기
  nextpage <- remDr$findElement(using='css selector', 'div.cnt_section.mt50 > div > div > div:nth-child(5) > div > a.next')
  if(nextpage$getElementAttribute("onclick") != 'goodsPageController.moveControl(1)'){
  break;
  }
  nextpage$clickElement()
  Sys.sleep(3)
}

gs25_twotoone <- data.frame(goodsname, goodsprice)
View(gs25_twotoone)
write.csv(gs25_twotoone, "output/gs25_twotoone.csv")
