[TOC]

# 2020-02-22 수업기록(R)

|        오전        |          오후          |
| :----------------: | :--------------------: |
| R 설치, 수업, 벡터 | 벡터, 실습(lab1), 행렬 |

#### What to do

- [x] R언어 복습



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

1. 벡터 생성 방법: c(), seq(), rep(), : 연산자

   - c()

     ```R
     > c(1:10)
     [1]  1  2  3  4  5  6  7  8  9 10
     ```

   - seq()

     ```R
     > seq(1,10, by=2) 
     [1] 1 3 5 7 9
     ```

   - rep()

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

   - LETTERS

     ``` R
     > LETTERS
     [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P"
     [17] "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
     ```

   - letters

     ```R
     > letters
     [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p"
     [17] "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
     ```

   - month.name

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

     

3. 주요 함수: length(), names(), sort(), order(), rev(), range(), class(), print() ..

   - length()

     ```R
     v1 = c(1, 2, 3, 4, 5)
     > length(v1)
     [1] 5
     ```

   - names(): 컬럼 이름 변경

     ```
     
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

4. 기타

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
   
   - rm(): ()의 객체를 삭제한다.
   
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



# 2020-02-23 수업기록(R)

|           오전            |        오후        |
| :-----------------------: | :----------------: |
| 행렬(matrix), lab2, 배열, | 펙터, 데이터프레임 |

#### What to do

- [ ] R언어 복습



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

#### What to do

- [ ] R언어 복습



# 2020-02-25 수업기록(R)

|      오전       |                          오후                          |
| :-------------: | :----------------------------------------------------: |
| lab4 리뷰, 함수 | 함수, lab5 실습, 함수(가변형 아규먼트), read file data |

#### What to do

- [ ] R언어 복습



# 2020-02-26 수업기록(R)

|         오전         |      오후       |
| :------------------: | :-------------: |
| read file data, 함수 | 함수, lab6 실습 |

#### What to do

- [ ] 





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

