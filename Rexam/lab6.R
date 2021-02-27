# [ 문제1 ]
countEvenOdd = function(x) {
  if(is.numeric(x)) {
    
  
   return(r)
  } else {
    return()
  }
}
countEvenOdd(3)

x = 11
odd = 0
even = 0
for(i in 1:x)
  if(i %% 2 == 1){
    odd = odd + 1
}else{
  even = even + 1
}
cat(odd,even)



evenodd2 <- function(p) {
  if(p %% 2 == 0) 
    r <- "even" 
  else 
    r <- "odd"
  return(r)
}
lapply(v, evenodd2)
evenodd2(3)


# [ 문제2 ]
vmSum <- function(x){
  result <- NULL
  if(is.vector(x) && !is.list(x) && is.numeric(x)) {
    result <- sum(x)
  } else {
    if(is.vector(x) && !is.numeric(x)){
      stop("숫자 벡터를 전달하숑!")  
    } else
      stop("벡터만 전달하숑!")
  }
  return(result)
}
vmSum(1:5)
vmSum(LETTERS)
vmSum(list(1,2,3))


# [ 문제3 ]
# [ 문제4 ]
# [ 문제5 ]

test2 <- function(p){
  cat("난 수행함\n")
  try(testError1(-1))
  cat("나 수행할 까요? \n")
}
test2()

myExpr = function(P){
  f = sample(1:45, 6)
  
  try(!is.function(p))
  cat("수행 안할꺼임!!")
}

myExpr(sum)

# [ 문제6 ]

createVector1 <- function(...) {
  if(any(is.na(...))) 
    return("NA")
  else
    p <- c(...)
    return(p)
}
createVector1()
createVector1("NA")
createVector1(3, LETTERS, TRUE)




# [ 문제7 ]
createVector2()


# [ 문제8 ]
data = scan("data/iotest1.txt",encoding="UTF-8")
summary(data)
str(data)

a = sort(data)
b = sort(data, decreasing = T)
c = sum(data)
d = mean(data)
cat("오름차순:",a,"\n","내림차순:",b,"\n","합:",c,"\n","평균:",d)

# [ 문제9 ]
data2 = scan("data/iotest2.txt",encoding="UTF-8")
summary(data2)
str(data2)
data3 = as.factor(data2)
maxword = data3[max(summary(data3))]
paste("가장 많이 등장한 단어는",maxword,"입니다.")
