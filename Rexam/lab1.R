# 문제1
v1 <- c(1:10)
v1
v2 <- v1 * 2
v2
max_v <- max(v2)
max_v
min_v <- min(v2)
min_v
avg_v <- mean(v2)
avg_v
sum_v <- sum(v2)
sum_v
v3 <- v2[-5]
v3
ls()

# 문제2
v4 = seq(1,10, by=2) 
v4
v5 = rep(1, 5)
v5
v6 = rep(1:3, 3)
v6
v7 = rep(1:4, each=2)
v7

# 문제3
nums = sample(1:100, 10)
nums
sort(nums)
sort(nums, decreasing = TRUE)
nums[nums > 50]
#(4) ~
order(nums[nums <= 50]) # 틀렸음..
which(nums <= 50)
which.max(nums)
which.min(nums)

# 문제4
v8 <- seq(1,10, by=3)
v8
names(v8) <- LETTERS[1:4] #names 내장된 함수


# 문제5
score = sample(1:20, 5)
score
myFriend = c("둘리", "또치", "도우너", "희동", "듀크")
myFriend
# (1)
paste(score,myFriend,sep="-")
# (2) ~
myFriend.score = myFriend
myFriend.score[which.max(score)]
myFriend.score[which.min(score)]
myFriend.score[which(score > 10)]


# 문제6
count = sample(1:100, 7)
count
week.korname = c("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일")
week.korname
paste(week.korname,count, sep=":")
week.korname[which.max(count)]
week.korname[which.min(count)]
week.korname[which(count > 50)]

# ___________________________________________________


# [문제1]
v1 <- c(1:10)
v2 <- v1*2
max_v <- max(v2)
min_v <- min(v2)
avg_v <- mean(v2)
sum_v <- sum(v2)
v3 <- v2[-5] # 특정 원소를 제외한 나머지 모든 원소를 출력하는 벡터를 표현하는 방법
ls()

# [문제2]
v4 <- seq(1,9,by=2) # seq 함수와 by를 정리해보자
v5 <- rep(1, each=5) # rep 함수의 each를 정리해보자
v6 <- rep(1:3, 3)
v7 <- rep(1:4, each=2)

# [문제3]
nums <- sample(1:100, 10)
sort(nums)
sort(nums, T)
nums[nums > 50]
nums[nums <= 50]
max(nums)
min(nums)

# [문제4]
v8 <- seq(1,10, by=3)
names(v8) <- LETTERS[1:4]

# [문제5]
score <- sample(1:20, 5)
myFriend <- c("둘리","또치","도우너","희동","듀크")
paste0(score,'-',myFriend) # paste함수에 대해서 정리하자.
myFriend[which.max(score)] # which.max 정리하자
myFriend[which.min(score)] # which.min 정리하자
myFriend[score > 10]

# [문제6]
count <- sample(1:100, 7)
week.korname <- c("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일")

names(count) <- week.korname;count
paste0(week.korname,'-',count) # paste 함수에 대해서 정리하자.
week.korname[which.max(count)]
week.korname[which.min(count)]
week.korname[count > 50]
