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

#문제5
exam5 = function(x,y="#") {
  for(i in 1:x)
    cat(y)
}
exam5(4)
exam5(6)
exam5(6,y="@")
exam5(-2)

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
