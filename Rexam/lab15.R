# [문제1]
성적 <- read.table("data/product_click.log", header=F)
head(성적)
pdata <- 성적[,2]
pdata2 <- table(pdata) # table 함수 정리하기

# barplot 출력
barplot(pdata2,
        col=terrain.colors(10),
        xlab='상품ID',
        ylab='클릭수')
title(main='세로바 그래프 실습', col.main="red", font.main=4, family="maple")

# barplot 저장
png(filename="clicklog1.png", height=400, width=600, bg="white")
barplot(pdata2, col=terrain.colors(10))
title(main='세로바 그래프 실습', col.main="red", font.main=4, family="maple")
title(xlab="상품ID")
title(ylab="클릭수")
dev.off()


# [문제2]
성적 <- read.table("data/product_click.log", header=F)
head(성적)
date <- 성적[,1]
time <- substr(date, 9, 10)
time2 <- table(time)

time3 <- data.frame(time2)
time3$time[1:17]
time3$time[2:18] # 19는 NA로 표시..어떻게 해결해야할까?

# pie 출력
pie(time2, 
    main='파이그래프 실습',
    labels=paste(time3$time[1:17],"-",time3$time[2:18]),
    col=heat.colors(10),
    radius=1)

# pie 저장
png(filename="clicklog2.png", height=400, width=600, bg="white")
pie(time2, col=heat.colors(10),labels=paste(time3$time[1:17],"-",time3$time[2:18]))
title(main="파이그래프 실습", col.main="blue", font.main=8)
dev.off()


# [문제3]
library(showtext)
showtext_auto() 
font_add(family = "cat", regular = "fonts/HoonWhitecatR.ttf")
font_add(family = "dog", regular = "fonts/THEdog.ttf")
font_add(family = "maple", regular = "fonts/MaplestoryBold.ttf")

(성적 <- read.table("data/성적.txt", header=TRUE))
성적2 <- 성적[,3:5]

# boxplot 출력
boxplot(성적2, col=rainbow(3), family="maple", ylim=c(2,10)) # 왜 family font가 적용이 안될까?
title(main="과목별 성적 분포", col.main="orange", font.main=4, family="maple")

# boxplot 저장
png(filename="clicklog3.png", height=400, width=600, bg="white")
boxplot(성적2, col=rainbow(3), family="maple", ylim=c(2,10))
title(main="과목별 성적 분포", col.main="orange", font.main=4, family="maple")
dev.off()

# [문제4]
score <- rbind(성적$국어, 성적$수학, 성적$영어)
colnames(score) <- 성적$성명
score
str(score)
class(score)

# barplot 출력
barplot(score, 
        main='학생별 점수', 
        col=rainbow(10),
        legend.text=c('국어','수학','영어'))
# barplot 저장
png(filename="clicklog4.png", height=600, width=800, bg="white")
par(mfrow=c(1, 1), mar=c(5, 5, 5, 7))
barplot(score, col=rainbow(10))
title(main='학생별 점수')
legend(11,28,c('국어','수학','영어'), fill=rainbow(10))
dev.off()