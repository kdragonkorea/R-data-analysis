# 문제1

v1 = sample(1:30, 10, replace=T)
v2 = letters[26:17]
names(v2) = v1
v1;v2

# 문제2

v = seq(10,38, by=2)
m1 = matrix(v, nrow=3, ncol=5, byrow=T)
m_max_v = max(m1)
m_min_v = min(m1)
row_max = apply(m1, 1, max)
col_max = apply(m1, 2, max)
ls()

# 문제3

n1 = c(1:3)
n2 = c(4:6)
n3 = c(7:9)
m2 = cbind(n1, n2, n3); m2
colnames(m2) <- NULL
m2

# 문제4

m3 = matrix(1:9, nrow=3, ncol=3, byrow=T)

# 문제5

rownames(m3) = c("row1","row2","row3")
colnames(m3) = c("col1","col2","col3")
m4 = m3

# 문제6

alpha = matrix(letters[1:6], nrow=2, ncol=3)
x = c(letters[24:26])
alpha2 = rbind(letters[24:26],alpha) # 아규먼트로 벡터, 메트릭스로 구성
y = c("s","p");y
alpha3 = cbind(alpha,c("s","p"))

# 문제7

a = array(1:24, dim=c(2,3,4))
a[2,3,4]
a[2,,]
a[,1,]
a[,,3]
a + 100
a[,,4] * 100
a[1,2:3,]
a[2,,2] = a[2,,2]+100
a[,,1] = a[,,1]-2;a
a[,,] = a[,,]*10;a
rm(a)

# ________________________________________________

# [문제1]
v1 <- sample(1:30, 10, T)
names(v1) <- c("z", "y", "x", "w", "v", "u", "t", "s", "r", "q" )
v2 <- names(v1)
v1;v2

# [문제2]
v <- seq(10,38,by=2)
m1 <- matrix(v, nrow = 3, byrow = T) # 벡트를 이용해서 메트릭스를 만드는 방법 정리하기.
m1 + 100
m_max_v <- max(m1);m_max_v
m_min_v <- min(m1);m_min_v
row_max <- apply(m1,1,max);row_max # apply 함수에 대해서 정리하기.
col_max <- apply(m1,2,max);col_max # apply 함수에 대해서 정리하기.

# [문제3]
n1 <- 1:3
n2 <- 4:6
n3 <- 7:9
m2 <- cbind(n1,n2,n3)
colnames(m2) <- NULL

# [문제4]
m3 <- matrix(1:9, nrow=3, byrow = T)

# [문제5]
colnames(m3) <- c('col1','col2','col3')
rownames(m3) <- c('row1','row2','row3') #colnames와 rownames 정리하기.

# [문제6]
alpha <- matrix(letters[1:6],nrow=2)
alpha2 <- rbind(alpha, c('x','y','z'));alpha2 # matrix에 데이터 추가 하는 방법 정리하기.
alpha3 <- cbind(alpha, c('s','p'));alpha3

# [문제7]







