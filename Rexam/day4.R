#read file data
nums <- scan("data/sample_num.txt") # 숫자로 인식하며, 숫자가 아닌 경우 에러
# encoding 코드셋명을 생략하고 읽으면 OS의 고유 코드셋(CP949) 정보를 반영해서 읽는다.
word_ansi <- scan("data/sample_ansi.txt",what="") # what을 넣으면 숫자가 아닌 문자로
words_utf8 <- scan("data/sample_utf8.txt", what="",encoding="UTF-8")
words_utf8_new <- scan("data/sample_utf8.txt", what="")
lines_ansi <- readLines("data/sample_ansi.txt") # 행단위로 구분해서 인식한다
lines_utf8 <- readLines("data/sample_utf8.txt",encoding="UTF-8")

df2 <- read.table("data/product_click.log", stringsAsFactors = T) # read.csv() 유사함
str(df2)
head(df2)
summary(df2$V2)

# 함수 정의와 활용

func1 <- function() {
  xx <- 10   # xx, yy 지역변수 (함수 안에서 만들어지는 변수)
  yy <- 20   
  return(xx*yy)
}
func1()
#yy : yy는 func1의 지역변수이기 때문에 출력이 안된다.
result <- func1()
result
xx  # 오류발생 : xx는 func1의 지역변수이기 때문에 출력이 안된다.
func1(10) # 오류발생 : func1은 매개변수가 없기 때문에 아규먼트를 입력할 경우 오류가 발생한다.

func2 <- function(x,y) {
  xx <- x
  yy <- y
  return(sum(xx, yy))
}

func2() # 오류발생 : func2은 매개변수가 있기 때문에 아규먼트가 없이 호출할 경우 오류가 발생한다.
func2(5,6) # 식 : 연산식, 호출식, 변수, 리터럴

func3 <- function(x,y) {
  #x3 <- x+1
  #y3 <- y+1
  x4 <- func2(x+1, y+1)  # 값(식) : 변수, 리터럴, 연산식, 호출식
  return(x4)
}

func3(9, 19)  # 30

func4 <- function(x=100, y=200, z) {
  return(x+y+z)
}
func4() # 에러
func4(10,20,30)
func4(10,20) # 에러
func4(z=1000)
func4(x=1,y=2,z=3)
func4(y=11,z=22,x=33)


# 쉬트에 있는 함수 코드
f1 <- function() print("TEST")
f1()
r <- f1()
r
f2 <- function(num) {print("TEST"); print(num) }
f2(100)
f2() # 매개변수가 없기 때문에 에러
f3<- function (p="R") print(p)
f3()
f3(p="PYTHON")
f3("java")
f4<- function (p1="ㅋㅋㅋ",p2) for(i in 1:p2) print(p1)
f4(p1="abc", p2=3)
f4("abc", 3) 
f4(5) 
f4(p2=5) 

f5<- function(...) { print("TEST"); data <- c(...); print(length(data))}
f5(10, 20, 30)
f5("abc", T, 10, 20)
f6<- function(...) {
  print("수행시작")
  data <- c(...)
  for(item in data) {
    print(item)
  }
  return(length(data))
}
f6()
f6(10)
f6(10,20)
f6(10,20,30)
f6(10,'abc', T, F)

f7<- function(...) {
  data <- c(...) # 벡터는 모든 데이터의 유형이 동일해야 한다.
  sum <- 0;
  for(item in data) {
    if(is.numeric(item))
      sum <- sum + item
    else
      print(item)
  }
  return(sum)
}
f7(10,20,30)
f7(10,20,'test', 30,40) # 모든 데이터의 유형이 동일하지 않기 때문에 numeric이 거짓이다.

f8<- function(...) {
  data <- list(...)
  sum <- 0;
  for(item in data) {
    if(is.numeric(item))
      sum <- sum + item
    else
      print(item)
  }
  return(sum)
}

f8(10,20,30)
f8(10,20,"test", 30,40)
