data = scan("data/iotest1.txt",encoding="UTF-8")
summary(data)
str(data)

a = sort(data)
b = sort(data, decreasing = T)
c = sum(data)
d = mean(data)
cat("오름차순:",a,"\n","내림차순:",b,"\n","합:",c,"\n","평균:",d)