# 문제1
L1 = list(
  name = "scott",
  sal = 3000
)

L1$sal * 2 -> result1

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

# 문제4
L4 = 	list(
  alpha=0:4, 
  beta=sqrt(1:5), 
  gamma=log(1:5)
)
L4$alpha + 10

# 문제5
data1 = LETTERS
data2 = data.frame(emp)[1:3,]
data3 = L4

L5 = list(
  data1 = LETTERS,
  data2 = data.frame(emp)[1:3,],
  data3 = L4
)

L5[[1]][1]
L5[[2]][,2]
L5[[3]][[3]]

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

# 문제9 / hint: rep 함수이용
(count = sample(3:10,1))
(deco = sample(1:3,1))

if(deco == 1){
  rep("*",count)
}else if(deco == 2){
  rep("$",count)
}else {
  rep("#",count)
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
level <- switch(EXPR = score1,"9점"="A","8점"="B","7점"="C","6점"="D","F")
cat(score," 점은 ",level,"등급입니다",sep="")

# 문제11
(a1 = LETTERS)
(a2 = letters)
paste(a1,a2,sep = "")
