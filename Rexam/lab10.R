library(RSelenium)

remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()

url<-'https://hotel.naver.com/hotels/item?hotelId=hotel:Shilla_Stay_Yeoksam&destination_kor=%EC%8B%A0%EB%9D%BC%EC%8A%A4%ED%85%8C%EC%9D%B4%20%EC%97%AD%EC%82%BC&rooms=2'
remDr$navigate(url)
Sys.sleep(2)

reple <- NULL; btn <- NULL; doms <- NULL;

# 첫 페이지 댓글 내용 읽기
doms <- remDr$findElements(using = "css selector", "div.review_ta.ng-scope > ul > li > div.review_desc > p")
reple_v <- sapply(doms, function (x) {x$getElementText()})
reple <- append(reple, unlist(reple_v));reple
Sys.sleep(2)

repeat{
  # 다음 버튼을 찾아서 클릭 이벤트를 발생
  btn <- remDr$findElement(using = "css selector", "div.review_ta.ng-scope > div.paginate > a.direction.next") # btn$getElementText() #findElements를 사용할 경우 리스트의 원소별로 추출해야 함.
  btn$clickElement()
  
  # 두번째 페이지 댓글 내용 읽기
  doms <- remDr$findElements(using = "css selector", "div.review_ta.ng-scope > ul > li > div.review_desc > p") 
  reple_v <- sapply(doms, function (x) {x$getElementText()})
  reple <- append(reple, unlist(reple_v))
  print(length(reple))
  Sys.sleep(2)

  # 마지막 페이지의 class 속성이 "direction next disabled" 인 경우 repeat를 끝내라.
  if(btn$getElementAttribute("class") == "direction next disabled"){
    break;
  }
}

print(reple)
write(reple, "output/naverhotel.txt")