v = sample(1:26, 10)

ABC = function(x) {
  for (i in 1:x)
    i = LETTERS[i]
    return(i)
}
sapply(v, ABC)

# LETTERS[v] 와의 차이는 ?

# [풀이]
sapply(v,function(d) LETTERS[d])
