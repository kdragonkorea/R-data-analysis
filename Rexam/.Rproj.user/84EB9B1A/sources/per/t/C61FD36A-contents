v1 <- 1:10
v2 = 10:1
print(v1)
v2
v3 <- 100
v3
v1 <- c(4, 1, 8, 6, 10) # c() 함수에는 아규먼트를 원하는 만큼 전달 가능
v2 <- c(100, 200, TRUE, FALSE); print(v2)
v3 <- c("100", 200, T, F); print(v3) # 숫자를 자동으로 문자로 변경
v1[5];v1[3];v1[1];v1[0];v1[6]
length(v1)

rep(1, 100)
rep(1:3, 5)
rep(1:3, times=5) # 키워드 파라미터
rep(1:3, each=5)
?rep  #help()

LETTERS
letters
month.name
month.abb
pi


LETTERS;letters;month.name;month.abb;pi

LETTERS[1]; LETTERS[c(3,4,5)]
LETTERS[3:5]; LETTERS[5:3]
LETTERS[-1]; LETTERS[c(-2,-4)] # 음의값 인덱스 : 제외하고

length(LETTERS)
length(month.name)
length(pi)


x <- c(10,2,7,4,15)
x
print(x)
class(x)
rev(x)
range(x)
sort(x)
sort(x, decreasing = TRUE)
sort(x, decreasing = T)
#x <- sort(x)
order(x)



x[3] <- 20
x
x + 1
x <- x + 1
max(x);min(x);mean(x);sum(x)
summary(x) # name 벡터

x[c(2,4)] # x[2], x[4]
x[c(F,T,F,T,F)] # x[c(T,F)] --> x[c(T,F,T,F,T)]
x > 5
x[x > 5] 
x[x > 5 & x < 15] # x[x > 5 && x < 15]
#x[x > 5 | x < 15] --> 

names(x) # names 벡터가 부여되어 있지 않다.
names(x) <- LETTERS[1:5]
names(x) <- NULL
x[2];x["B"];


# &, &&
c(T, T, F, F) & c(T, F, T, F)
c(T, T, F, F) | c(T, F, T, F)
c(T, T, F, F) && c(T, F, T, F) # 첫번째 원소만 연산한다.
c(T, T, F, F) || c(T, F, T, F) # 첫번째 원소만 연산한다.


ls() # 모든 객체를 보여준다.
rm(x) # x의 객체를 삭제한다.
x
class(x)

rainfall <- c(21.6, 23.6, 45.8, 77.0, 
              102.2, 133.3,327.9, 348.0, 
              137.6, 49.3, 53.0, 24.9)
rainfall > 100
rainfall[rainfall > 100]
which(rainfall > 100) # 
month.name[which(rainfall > 100)]
month.abb[which(rainfall > 100)]
month.korname <- c("1월","2월","3월",
                   "4월","5월","6월",
                   "7월","8월","9월",
                   "10월","11월","12월")
month.korname[which(rainfall > 100)]
which.max(rainfall)
which.min(rainfall)
month.korname[which.max(rainfall)]
month.korname[which.min(rainfall)]


sample(1:20, 3) # 1에서 20까지 3개만 리턴 (중복x)
sample(1:45, 6) # 1에서 45까지 6개만 리턴 (중복x)
sample(1:10, 7) # 1에서 10까지 7개만 리턴 (중복x)
sample(1:10, 7, replace=T) # 1에서 10까지 7개만 리턴 (중복o)

paste("I'm","Duli","!!") # 
paste("I'm","Duli","!!", sep="") # , 사이의 공백 제외
paste0("I'm","Duli","!!") # , 사이의 공백 제외

fruit <- c("Apple", "Banana", "Strawberry")
food <- c("Pie","Juice", "Cake")
paste(fruit, food)

paste(fruit, food, sep="")
paste(fruit, food, sep=":::")
paste(fruit, food, sep="", collapse="-")
paste(fruit, food, sep="", collapse="")
paste(fruit, food, collapse=",")


