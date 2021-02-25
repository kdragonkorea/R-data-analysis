#문제1
exam1 = function() {
  result = paste(LETTERS,letters,sep = "")
  return(result)
}
exam1()

#문제2
sum = 0
exam2 = function(nums) {
  for(i in 1:nums)
    sum = sum + i
    return(sum)
}
exam2(3)
exam2(100)

#다른정답
exam2 = function(nums) {
  return(sum(1:nums))
}

#문제3
exam3 = function(n1,n2){
  if(n1>n2){
    result=n1-n2
  }else if(n1<n2){
    result=n2-n1
  }else
    result=0
  return(result)
}
exam3(10,100)
exam3(10,10)
exam3(100,10)

# 문제3 - 정답2번째
exam3 <- function(a,b){
  if(a >= b) {
    result = a - b
  }
  else{
    result = b - a
  }  
  return(result)
}

#문제4
exam4 = function(n1,x="연산자",n2){
  if (x == "+") {
    result = n1 + n2
  }else if (x == "-"){
    result = n1 - n2
  }else if (x == "*"){
    result = n1 * n2
  }else if (x == "%/%"){
    result = n1 %/% n2
  }else if (x == "%%"){
    result = n1 %% n2
  }else{
    result = "규격의 연산자만 전달하세요"
  }
  if (n1 == 0) {
    result = "오류1"
  }else if (n2 == 0) {
    result = "오류2"
  }
    return(result)
}
exam4(1,"+",100)
exam4(1,"-",100)
exam4(1,"*",100)
exam4(1,"%%",100)
exam4(1,"%/%",100)
exam4(1,"&",100)
exam4(0,"+",100)
exam4(1,"+",0)

# 문제4 - 두번째 정답
exam4 <- function(n1, cal, n2) {
  if (cal == "+"){
    rs = n1 + n2
  }else if (cal == "-"){
    rs = n1 - n2
  }else if (cal == "*"){
    rs = n1 * n2
  }else if (cal == "%/%" | cal == "%%"){
    if (n1 == 0){
      rs = "오류1"
    }else if (n2 == 0){
      rs = "오류2"
    }else{
      if (cal == "%/%"){
        rs = n1 %/% n2
      }else{
        rs = n1 %% n2
      }
    }
  } else {
    result = "규격의 연산자만 전달하세요"
  }
  return (rs)
}

#문제5
exam5 = function(x,y="#") {
  for(i in 1:x)
    cat(y)
}
exam5(4)
exam5(6)
exam5(6,y="@")
exam5(-2)

#문제5-두번째정답
exam5 <- function(a, b = '#'){
  if(a > 0){
    for(i in 1:a){
      cat(b)
    }
  }  
}

#문제6
exam6 = function(score) {
  if (score >= 85 & score <= 100){
    level = "상"
  }else if (score >= 70){
    level = "중"
  }else{
    level = "하"
  }
  cat(score," 점은 ",level," 등급입니다.",sep="")
}

exam6(100)
exam6(85)
exam6(70)
exam6(0)

exam6("NA")
#print(level,"입니다.") # print는 하나만 출력해서 paste를 사용해야 한다.

#문제6 - 정답
exam6 <- function(score){
  end <- length(score)
  for (i in 1:end) {
    if(is.na(score[i])) # 제일 위로 올려야 하는 이유는 ?
      cat("NA는 처리 불가\n")
    else if (score[i] >= 85)
      cat(score[i],"점은 상등급입니다\n")
    else if(score[i] >= 70)
      print(paste(score[i],"점은 중등급입니다"))
    else 
      print(paste(score[i],"점은 하등급입니다"))
  }
  return()
}

exam6(c(80,50,70,66,NA,35))
