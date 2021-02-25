# 문제1
L1 = list(
  name = "scott",
  sal = 3000
)

L1$sal * 2 -> result1 # L1[["sal"]] 가능
result1

# ex) L1['sal'] * 2 # L1['sal']: 리스트 형태 (이항연산자 불가)
# ex) L1[['sal']] * 2 # L1[['sal']]: 벡터 (이항연산자 가능)

# 문제2
L2 = list(
  "scott",
  c(100, 200, 300)
)

# 문제3
L3 = list(
  c(3,5,7), 
  c("A", "B", "C")
)
L3[[2]][1] <- 'Alpha'
L3[[2]][[1]] # 이상함

# 문제4
L4 = 	list(
  alpha=0:4, 
  beta=sqrt(1:5), 
  gamma=log(1:5)
)
L4$alpha + 10 # 다음과 같이 해도 가능: L4[[1]] + 10, L4[['alpha']] + 10

# 문제5
data1 = LETTERS
data2 = data.frame(emp)[1:3,] # emp[1:3,] 으로 해도 가능
data3 = L4

L5 = list(
  data1 = LETTERS,
  data2 = data.frame(emp)[1:3,],
  data3 = L4
)

L5[[1]][1] # 리스트에서 첫번째 [[1]], 백터에서 첫번째 [1]
L5[[2]][,2] # L5[[2]]$ename, L5$data2$ename
L5[[3]][[3]] # 벡터형태로 출력, L5[[3]][3] 리스트형태로 출력

# 문제6
L6 = list(
  math=list(95, 90), 
  writing=list(90, 85), 
  reading=list(85, 80)
  )
mean(unlist(L6))


# 문제7
grade = sample(1:6, 1)

if(grade == 1 | grade == 2 | grade == 3){
  cat(grade,"학년은 저학년입니다.\n")
}else{
  cat(grade,"학년은 고학년입니다.\n")
}

# 문제8
(choice = sample(1:5, 1))

if (choice == 1){
  cat("결과값",":",300+50)
}else if (choice == 2){
  cat("결과값",":",300-50)
}else if (choice == 3){
  cat("결과값",":",300*50)
}else if (choice == 4){
  cat("결과값",":",300/50) 
}else {
  cat("결과값",":",300%%50)
}

# 문제8-정답2
if(choice==1){
  msg = (300 + 50)
}else if (choice==2){
  msg = (300 - 50)
}else if (choice==3){
  msg = (300 * 50)
}else if (choice==4){
  msg = (300 / 50)
}else {
  msg = (300 %% 50)
}
cat("결과값 :" , msg)

# 문제9 / hint: rep 함수이용
(count = sample(3:10,1))
(deco = sample(1:3,1))

if(deco == 1){
  rep("*",count) # rep함수는 벡터이고 print 처럼 리턴한다.
}else if(deco == 2){
  rep("$",count)
}else {
  rep("#",count)
}

# 문제9 - 정답2
if (deco==1){
  for(i in 1:count)
    cat("*")
}else if (deco==2) {
  for(i in 1:count)
    cat("$")
}else{
  for(i in 1:count)
    cat("#")
}

# 문제10 / hint: 추출된 값을 10으로 나눈 몫으로 비교

score <- sample(0:100,1)
if(score%/%10 >= 9){
  score1 <- paste(score%/%10,"점",sep="")
}else if(score%/%10 >= 8){
  score1 <- paste(score%/%10,"점",sep="")
}else if(score%/%10 >= 7){
  score1 <- paste(score%/%10,"점",sep="")
}else if(score%/%10 >= 6){
  score1 <- paste(score%/%10,"점",sep="")
}else if(score%/%10 <= 5){
  score1 <- paste(score%/%10,"점",sep="")
}
level <- switch(EXPR = score1,"10점"=,"9점"="A","8점"="B","7점"="C","6점"="D","F")
cat(score," 점은 ",level,"등급입니다",sep="")

# 문제10 - 정답2

score <- sample(0:100,1)
score 
score <- score %/% 10
level <- switch(EXPR=as.character(score), 
                "10"=, "9"="A등급",
                "8"="B등급",
                "7"="C등급",
                "6"="D등급",
                "F등급")
cat(score,"은 ",level,"입니다\n",sep="")

# 문제11
(a1 = LETTERS)
(a2 = letters)
paste(a1,a2,sep = "")
