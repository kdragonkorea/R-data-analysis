#문제1
str(iris) # 관측치와, 각각의 변수가 어떤것이 있는지 확인하기 위해 사용
summary(iris) # 요약정보를 확인할때 사용

#문제2
df1 = data.frame(
  x=c(1:5),
  y=seq(2,10, by=2))

#문제3
df2 = data.frame( # '=' or '<-' 둘다 가능하다)
  col1=c(1:5), # '=' 반드시 써야 한다.
  col2=letters[1:5],
  col3=c(6:10))

#문제4
제품명 = c("사과","딸기","수박")
가격 = c(1800,1500,3000)
판매량 = c(24,38,13)
df3 = data.frame(제품명, 가격, 판매량);df3
summary(df3)
class("제품명") # class("제품명")은 원소값을 하나만 가지고 있는 벡터로 인식
class(제품명) # class(제품명) 으로 입력 또는 class(df3$제품명)으로 입력력
class(df3$제품명)

#문제5
mean(df3$가격)
mean(df3$판매량)

#문제6
name <- c("Potter", "Elsa", "Gates", "Wendy", "Ben")
gender <- factor(c("M", "F", "M", "F", "M"))
math <- c(85, 76, 99, 88, 40)
df4 = data.frame(name, gender, math)
#(a)
stat <- c(76, 73, 95, 82, 35)
df4$stat = c(76, 73, 95, 82, 35) # df4$stat = stat 로 표현하는게 더 좋다.
df4
#(b)
df4$score = df4$math + df4$stat
df4
#(c)
df4$grade = ifelse(df4$score>=150,"A",
                   ifelse(df4$score>=100,"B",
                          ifelse(df4$score>=70,"C","D")))
df4

#문제7
emp <- read.csv(file.choose()) # read.csv("data/emp.csv")
myemp = emp # myemp = read.csv(file.choose()) 는 데이터프레임을 리턴한다.
str(myemp)

#문제8
myemp[3:5,] # myemp[c(3, 4, 5),] 도 가능

#문제9
myemp[,-1]

#문제10
myemp[,"ename"] # myemp$ename 가능, myemp["ename"] 가능(데이터프레임 유지)

#문제11
myemp[,c("ename","sal")] # 컬럼이 2개이기 때문에 자동으로 데이터프레임 유지

#문제12
myemp$job == "SALESMAN" # 등가연산
myemp[myemp$job == "SALESMAN",c("ename","sal","job")]

#문제13
subset(myemp, sal>=1000 & sal<=3000, c("ename","sal","deptno")) # 정답1
myemp[myemp$sal >= 1000 & myemp$sal <= 3000, c("ename","sal","deptno")] # 정답2

#문제14
subset(myemp, myemp$job != "ANALYST" 
       , select = c("ename", "job", "sal")) # subset을 사용할 경우 'myemp$job' or 'job'으로만 사용해도 가능하다

#문제15
subset(myemp, myemp$job=="SALESMAN" | myemp$job=="ANALYST" # select는 생략 가능
       , select = c("ename", "job"))

#문제16
myemp[is.na(myemp$comm),]
subset(myemp,is.na(myemp$comm),c("ename","sal")) #정답1
myemp[is.na(myemp$comm),c("ename","sal")] #정답2

#문제17
sort(myemp$sal)
order(myemp$sal)
myemp[c(order(myemp$sal)),] # order함수는 벡터를 리턴하기 때문에, c제거 가능
myemp[order(myemp$sal),]

#문제18
str(myemp)
dim(myemp) # dim은 행과열만 나타내는 함수

#문제19
myemp$deptno = as.factor(myemp$deptno) # as.factor 또는 factor 써도 가능
summary(myemp)
summary(myemp$deptno) # table함수도 가능하다 (table은 타입에 관계없이 개수 출력)

#문제20
myemp$job = as.factor(myemp$job)
summary(myemp$job)


