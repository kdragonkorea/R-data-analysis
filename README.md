[TOC]

# 2020-02-22 수업기록(R)

|        오전        |          오후          |
| :----------------: | :--------------------: |
| R 설치, 수업, 벡터 | 벡터, 실습(lab1), 행렬 |



#### 빅데이터 처리 교육과정 (R/Python)

1. **데이터 수집과 저장:** AWS는 나중에 상황이 될때 진행(비정형/정형에 따라 MongoDB, MariaDB 사용)하며, 우선은 파일로 저장
2. **EDA를 통한 시각화와 전처리:** EDA(Exploratory Data Analysis, 탐색적 데이터 분석) 연습과 시각화 전처리 연습
3. 데이터 분석
4. 분석 결과/시각화 표현



#### 정적/동적 크롤링

* html과 css만 이루어진 것: 정적 크롤링
* html과 css 뿐만 아니라 javascript와 ajax로 이루어진 것: 동적 크롤링



#### R 구문 학습 내용

- R로 다룰 수 있는 데이터의 종류: 자료형(data type)

- R로 다룰 수 있는 데이터셋의 종류: 벡터, 행렬(matrix), 배열, 데이터프레임, 리스트

- R에서 사용 가능한 연산자

  제어문: for, while, repeat(무한루프), if, else if, else, break, next

- 함수 정의와 활용

- 파일에 있는 데이터 읽기: csv, xml, json, xlsx, txt



**논리 True를 사용하는 방법**

| 파이썬 | 자바스크립트 |    R    |
| :----: | :----------: | :-----: |
|  True  |     true     | TRUE(T) |



#### 벡터 함수

1. 벡터 생성 방법: c(), seq(), rep(), `: 연산자`

   - c()

     ```R
     > c(1:10)
     [1]  1  2  3  4  5  6  7  8  9 10
     ```

   - seq(): 벡터 원소를 규칙적으로 나열

     ```R
     > seq(1,10, by=2) 
     [1] 1 3 5 7 9
     ```

   - rep(): 벡터 원소를 반복

     ```R
     > rep(1:3, 5)
      [1] 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3
     > rep(1:3, each=5)
      [1] 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3
     ```

   - :

     ```R
     > 1:10
     [1]  1  2  3  4  5  6  7  8  9 10
     ```

     

2. 내장 상수 벡터: LETTERS, letters, month.name, month.abb, pi

   - LETTERS: 대문자 알파벳 벡터

     ``` R
     > LETTERS
     [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P"
     [17] "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
     ```

   - letters: 대문자 알파벳 벡터

     ```R
     > letters
     [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p"
     [17] "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
     ```

   - month.name: 

     ```R
     > month.name
     [1] "January"   "February"  "March"     "April"     "May"      
     [6] "June"      "July"      "August"    "September" "October"  
     [11] "November"  "December" 
     ```

   - month.abb

     ```R
     > month.abb
     [1] "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov"
     [12] "Dec"
     ```

   - pi

     ```R
     [1] 3.141593
     ```

     

3. 주요 함수: length(), names(), sort(), order(), rev(), range(), class(), print(), max(), min(), mean(), sum() ...

   - length(): 원소의 개수

     ```R
     v1 = c(1, 2, 3, 4, 5)
     > length(v1)
     [1] 5
     ```

   - names(): 컬럼 이름 변경

     ```R
     x <- c(10,2,7,4,15)
     names(x) <- LETTERS[1:5]
     > x
      A  B  C  D  E 
     10  2  7  4 15 
     ```

   - sort(): 오름차순으로 정렬

     ```R
     x <- c(10,2,7,4,15)
     > sort(x)
     [1]  2  4  7 10 15
     > sort(x, decreasing = TRUE)
     [1] 15 10  7  4  2
     ```

   - order(): 인덱스로 가장 작은 값들 부터 리턴

     ```R
     x <- c(10,2,7,4,15)
     > order(x)
     [1] 2 4 3 1 5 # 가장 작은 2는 인덱스가 2, 그 다음으로 작은 4는 인덱스가 4, 7->3, 10->1 ...
     ```

   - max(), min(), mean(), sum()

     ```R
     x <- c(10,2,7,4,15)
     > max(x);min(x);mean(x);sum(x)
     [1] 15
     [1] 2
     [1] 7.6
     [1] 38
     ```

   - summary()

     ```R
     x <- c(10,2,7,4,15)
     > summary(x)
        Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
         2.0     4.0     7.0     7.6    10.0    15.0 
     ```

   - ls(): 모든 객체를 보여준다.

   - rm(): ()의 객체를 삭제

   - which

     ```R
     rainfall <- c(21.6, 23.6, 45.8, 77.0, 
     +               102.2, 133.3,327.9, 348.0, 
     +               137.6, 49.3, 53.0, 24.9)
     > which(rainfall > 100) # 100보다 큰 'rainfall' 객체의 인덱스를 리턴
     [1] 5 6 7 8 9
     > rainfall[rainfall > 100] # 100보다 큰 'rainfall' 객체의 value를 리턴
     [1] 102.2 133.3 327.9 348.0 137.6
     > which.max(rainfall) # 'rainfall' 객체에서 최대값 인덱스를 리턴
     [1] 8
     > which.min(rainfall) # 'rainfall' 객체에서 최소값 인덱스를 리턴
     [1] 1
     ```

   - paste

     ```R
     > paste("I'm","Duli","!!") # 
     [1] "I'm Duli !!"
     > paste("I'm","Duli","!!", sep="") # ',' 사이의 공백 제외
     [1] "I'mDuli!!"
     > paste0("I'm","Duli","!!") # ',' 사이의 공백 제외
     [1] "I'mDuli!!"
     ```

   - sample

     ```R
     > sample(1:20, 3) # 1에서 20까지 3개만 리턴 (중복x)
     [1] 4 1 7
     > sample(1:45, 6) # 1에서 45까지 6개만 리턴 (중복x)
     [1] 23 27 16 21 24 40
     > sample(1:10, 7) # 1에서 10까지 7개만 리턴 (중복x)
     [1] 1 5 6 2 4 7 3
     > sample(1:10, 7, replace=T) # 1에서 10까지 7개만 리턴 (중복o)
     [1] 1 4 5 4 6 4 6
     ```


4. 벡터의 인덱스

   - 원소 추출 방법

     ```R
     > LETTERS[3:5]
     [1] "C" "D" "E"
     
     > LETTERS[-1] # 음의값 인덱스 : 제외한 나머지 모두 출력
      [1] "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R"
     [18] "S" "T" "U" "V" "W" "X" "Y" "Z"
     
     > LETTERS[c(-2,-4)]
      [1] "A" "C" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S"
     [18] "T" "U" "V" "W" "X" "Y" "Z"
     ```

     

# 2020-02-23 수업기록(R)

|           오전            |        오후        |
| :-----------------------: | :----------------: |
| 행렬(matrix), lab2, 배열, | 펙터, 데이터프레임 |



#### 행렬 (matrix)

1. 행렬생성하는 법

   - matrix()

     ```R
     x1 = matrix(1:8, nrow = 2) #ncol 매개변수의 값 생략 가능
     > x1
          [,1] [,2] [,3] [,4]
     [1,]    1    3    5    7
     [2,]    2    4    6    8
     
     x2 = matrix(1:9, nrow=3, ncol=3, byrow=T) #'byrow=T'는 데이터를 행 부터 정렬
     > x2
          [,1] [,2] [,3]
     [1,]    1    2    3
     [2,]    4    5    6
     [3,]    7    8    9
     ```

   - rbind(벡터, 벡터, 벡터), rbind(행렬, 벡터), cbind()도 rbind와 동일

     ```R
     n1 = c(1:3)
     n2 = c(4:6)
     n3 = c(7:9)
     m1 = cbind(n1, n2, n3)
     colnames(m2) <- NULL # cbind에서 생성된 col의 이름을 제거
     > m1
          [,1] [,2] [,3]
     [1,]    1    4    7
     [2,]    2    5    8
     [3,]    3    6    9
     
     alpha = matrix(letters[1:6], nrow=2, ncol=3)
     alpha3 = cbind(alpha,c("s","p")) # 아규먼트로 메트릭스, 벡터로 구성
     > alpha3
          [,1] [,2] [,3] [,4]
     [1,] "a"  "c"  "e"  "s" 
     [2,] "b"  "d"  "f"  "p" 
     ```

2. matrix의 각 행 또는 열의 최대,최소값 구하기

   - array()

     ```R
     > m1
          [,1] [,2] [,3] [,4] [,5]
     [1,]   10   12   14   16   18
     [2,]   20   22   24   26   28
     [3,]   30   32   34   36   38
     
     > row_max <- apply(m1,1,max);row_max # apply(matrix, 행, 함수)
     [1] 18 28 38
     > col_max <- apply(m1,2,max);col_max # apply(matrix, 열, 함수)
     [1] 30 32 34 36 38
     ```

3. matrix의 행과 열의 이름 정의

   - rownames(), colnames()

     ```R
     > m3
          [,1] [,2] [,3]
     [1,]    1    2    3
     [2,]    4    5    6
     [3,]    7    8    9
     
     colnames(m3) <- c('col1','col2','col3')
     rownames(m3) <- c('row1','row2','row3')
     
     > m3
          col1 col2 col3
     row1    1    2    3
     row2    4    5    6
     row3    7    8    9
     ```

     

#### 배열 함수 (array)

1. 배열생성하는 법

   - array(벡터, dim=c(row,col,array))

     ```R
     a = array(1:24, dim=c(1,2,3))
     > a
     , , 1
     
          [,1] [,2]
     [1,]    1    2
     
     , , 2
     
          [,1] [,2]
     [1,]    3    4
     
     , , 3
     
          [,1] [,2]
     [1,]    5    6
     ```

     

#### 펙터 (factor)

1. factor생성하는 법

   - factor()

     ```R
     score <- c(1,3,2,4,2,1,3,5,1,3,3,3)
     f_score <- factor(score) 
     > f_score
      [1] 1 3 2 4 2 1 3 5 1 3 3 3
     Levels: 1 2 3 4 5
     ```

   - as.factor()

     ```R
     score <- c(1,3,2,4,2,1,3,5,1,3,3,3)
     f_score1 <- as.factor(score)
     > f_score1
      [1] 1 3 2 4 2 1 3 5 1 3 3 3
     Levels: 1 2 3 4 5
     ```

     

#### 데이터프레임 함수 (data frame)

1. datafram 생성하는 법: data.frame(), 

   ```R
   x = matrix(1:8, nrow = 2) #ncol 매개변수의 값 생략 가능
   
   ```

2. str(), summary()
3. read.csv(file.choose())
4. df[], df$col, subset(), order(), as.factor, 



# 2020-02-24 수업기록(R)

|    오전    |     오후     |
| :--------: | :----------: |
| lab3 리뷰, | list, 제어문 |



# 2020-02-25 수업기록(R)

|      오전       |                          오후                          |
| :-------------: | :----------------------------------------------------: |
| lab4 리뷰, 함수 | 함수, lab5 실습, 함수(가변형 아규먼트), read file data |



# 2020-02-26 수업기록(R)

|         오전         |      오후       |
| :------------------: | :-------------: |
| read file data, 함수 | 함수, lab6 실습 |

#### Read file data

1. .csv: read.csv() - data.frame
2. .log: read.table() - data.frame
3. .txt: scan() - vector, readLines() - vector
4. .xml
5. .xlsx



#### 코드셋

각 나라마다 그 나라 고유의 코드셋이 있으며, 컴퓨터에서 문자를 표현하기 위해 문자마다 부여한 숫자값이다.

1. 0x00 ~ 0x7F - ASCII 코드값이라고 해서 전세계의 표준 - 숫자,영문대소문자, 특수기호
2. 0xB0A1 ~ - 가 ~ 힣

----> KSC5601, EUC-KR, CP949, 메모장(ansi)

----> 영문 1byte, 한글 2byte



1990년대부터 전세계의 모든 문자들의 코드값을 단일화시키자 하는 노력이 시작된다.

---> UNICODE - UTF-8

----> 1byte ~ 4byte

---->영문 1byte, 한글 3byte



#### apply 함수

| apply()                              | sapply()                    | lapply()           | tapply() | mapply() |
| ------------------------------------ | --------------------------- | ------------------ | -------- | -------- |
| apply(m, 1, 함수), apply(m, 2, 함수) | sapply(v, 함수)             | lapply(v, 함수)    | -        | -        |
|                                      | 리턴값은 가급적 단순한 객체 | 리턴값은 list 객체 | -        | -        |



# 2020-03-02 수업기록(R)

|          오전          |     오후     |
| :--------------------: | :----------: |
| 스케쥴 공지, lab6 리뷰 | 주요API활용, |

#### 전공학습 스케쥴

* 2/22 ~ 3/23: R 기반의 빅데이터 처리(15일), 빅데이터 활용 프로젝트(5일)
* 3/24 ~ 4/27: python 기반으 ㅣ빅데이터 처리, SQL, Spark (16일), 빅데이터 활용 프로젝트(9일)

 

### [정규 표현식](https://ko.wikipedia.org/wiki/%EC%A0%95%EA%B7%9C_%ED%91%9C%ED%98%84%EC%8B%9D)

> 특정한 규칙을 가진 문자열의 집합을 표현하는 데 사용하는 형식 언어

#### 문법

| 문자      | 기능                                     | 설명        | 예제 |
| --------- | ---------------------------------------- | ----------- | ---- |
| [:space:] |                                          | 공백 문자   |      |
| [:digit:] | [0-9]                                    | 숫자        |      |
| [:alnum:] | [A-Za-z0-9]                              | 영숫자      |      |
| [:punct:] | ```[][!"#$%&'()*+,./:;<=>?@\^_`{|}~-]``` | 구두점      |      |
| [:alpha:] | [A-Za-z]                                 | 알파벳 문자 |      |



#### gsub와 sub

- gsub("찾을문자열", "대체문자열", "대상문자열")을 모두 수행
- sub("찾을문자열", "대체문자열", "대상문자열")을 첫번째만 수행



# 2020-03-08 수업기록(R)

|        오전        | 오후 |
| :----------------: | :--: |
| 동적 스크래핑 리뷰 |      |



### 동적 스크래핑

#### 1. 동적 스크래핑 Selenium 서버 기동 방법

* selenium directory 접속 - `cmd` or `terminal`에서 아래 명령어 입력

  ```
  java -Dwebdriver.chrome.driver="chromedriver.exe" -jar selenium-server-standalone-4.0.0-alpha-1.jar -port 4445
  ```

* R Script에서 아래 명령어 입력

  ```R
  library(RSelenium)
  
  remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
  remDr$open()
  ```

#### 2. 동적 스크래핑 주요 API 명령어

- R  코드로 Selenium 서버에 접속하고 remoteDriver 객체 리턴  

  ```R
  remDr <-remoteDriver(remoteServerAddr="localhost",port=4445,browserName="chrome")
  ```

- 브라우저 오픈(크롬)

  ```R
  remDr$open()
  ```

- url 에 해당하는 웹페이지 랜더링

  ```R
  remDr$navigate(url)
  ```

- 태그 한 개 `찾기(webElement 객체)`, 태그가 없으면 NoSuchElement 오류 발생

  ```R
  one <- remDr$findElement(using='css selector','css선택자')
  ```

- 찾아진 태그의 태그 명 추출(webElement 객체가 제공)

  ```R
  one$getElementTagName()
  ```

- 찾아진 태그의 태그 `내용` 추출(webElement 객체가 제공)

  ```R
  one$getElementText()
  ```

- 찾아진 태그의 속성 명에 대한 값 추출 (webElement 객체가 제공)

  ```R
  one$getElementAttribute(”속성명”)
  ```

- 찾아진 태그에서 `클릭이벤트 발생`시키기, (webElement 객체가 제공)

  ```R
  one$clickElement()
  ```

#### 동적 스크래핑 주요 API 명령어2 (2개 이상)

- 태그들을 찾기 존재하지 않으면 비어있는 리스트 리턴

  ```R
  doms <- remDr$findElements(using ="css selector", "컨텐트를추출하려는태그의 CSS선택자")
  ```

- 찾아진 태그들의 컨텐트들의 추출하여 리스트로 리턴

  ```R
  sapply(doms,function(x){x$getElementText()})
  ```

- 찾아진 태그들에 각각 `클릭` 이벤트 발생

  ```R
  sapply(doms, function(x){x$clickElement()})
  ```

- **가끔 clickElement() 가 일을 안 할 때가 있음… 이 때 사용하면 좋음**

  ```R
  remDr$executeScript("arguments[0].click();",nextPageLink)
  ```

- 페이지를 아래로 내리는(`스크롤`) 효과

  ```R
  webElem <- remDr$findElement("css selector", "body")
  remDr$executeScript("scrollTo(0, document.body.scrollHeight)", args = list(webElem))
  ```



# 2020-03-09 수업기록(R)

|             오전             | 오후 |
| :--------------------------: | :--: |
| wordcloud 시각화 연습, lab13 |      |

#### 미니 프로젝트(R) 주제 선정하기

- <u>데이터 크롤링 / 데이터 텍스트 분석 / 데이터 시각화 활용을 어떻게 할까?</u>
- 주제1
  - 주제선정: 인스타그램, 네이버블로그에서 여행에 관련된 <u>지역, 숙소명, 액티비티 이름</u> 등을 (인기 키워드로 검색) 추출하여 실제로 판매되고 있는 여행 인기 상품들과 관련성 비교
  - 구체적으로 해야할 작업:
  - 기대효과: 실제 여행객들이 선호하는 여행과 여행사에서 판매하고 있는 상품들이 얼마나 일치하고 있는지 알 수 있고 미발굴된 상품들은 제안 및 상품화할 수 있도록 추천
- 주제2
  - 주제선정: 채용시장에서 인기 있는 포지션
  - 기대효과: 
- 3/12(금): 워드 문서로 프로젝트 주제 및 계획을 소개하는 시간
- 관심분야: 주식자료 동향, 소비패턴에 대한 분석, 교통정보(공공데이터 포털 API 있지만, 실시간 데이터)

이커머스(쿠팡/티몬/위메프/G마켓/11번가/네이버) 택 3개 <-> 인스타그램 인기 키워드



#### 데이터를 읽는 방법

- 행단위로 구분 `없이` 읽어오는 방법: scan("directory/file name")

  ```R
  nums <- scan("data/sample_num.txt")
  # 숫자로 인식하며, 숫자가 아닌 경우 에러 발생한다.
  # encoding 코드셋명을 생략하고 읽으면 OS의 고유 코드셋(CP949) 정보를 반영해서 읽는다.
  ```

- 행단위로 구분 `없이` 읽어오는 방법2: scan("directory/file name", what="")

  ```R
  word_ansi <- scan("data/sample_ansi.txt",what="") # what을 넣으면 숫자가 아닌 문자로 출력
  words_utf8 <- scan("data/sample_utf8.txt", what="",encoding="UTF-8")
  ```

- 행단위로 `구분하여` 읽어오는 방법: readLines("directory/file name")

  ```R
  lines_ansi <- readLines("data/sample_ansi.txt")
  lines_utf8 <- readLines("data/sample_utf8.txt",encoding="UTF-8")
  ```

- data.frame으로 읽어오는 방법: read.csv("directory/file name", )

  ```R
  df2 <- read.table("data/product_click.log", stringsAsFactors = T) # read.csv() 유사함
  
  > str(df2)
  'data.frame':	746 obs. of  2 variables:
   $ V1: num  2.02e+11 2.02e+11 2.02e+11 2.02e+11 2.02e+11 ...
   $ V2: Factor w/ 10 levels "p001","p002",..: 1 3 3 8 8 6 10 2 9 1 ...
  
  > head(df2)
              V1   V2
  1 201612120944 p001
  2 201612120944 p003
  3 201612120944 p003
  4 201612120945 p008
  5 201612121052 p008
  6 201612121052 p006
  
  > summary(df2$V2)
  p001 p002 p003 p004 p005 p006 p007 p008 p009 p010 
    88  104   58   93   51   54   73   81   85   59 
  ```

- read.table()

  ```R
  d
  ```

  