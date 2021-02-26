data2 = scan("data/iotest2.txt",encoding="UTF-8")
summary(data2)
str(data2)
data3 = as.factor(data2)
maxword = data3[max(summary(data3))]
paste("가장 많이 등장한 단어는",maxword,"입니다.")