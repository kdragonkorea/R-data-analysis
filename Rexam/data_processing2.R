memo <- readLines("data/memo.txt",encoding="UTF-8")
memo[1]
gsub("[&$!#@%]", "", memo[1]) -> L1

memo[2]
gsub("e", "E", memo[2]) -> L2

memo[3]
gsub("[[:digit:]]", "", memo[3]) -> L3

memo[4]
gsub("[A-z]", "", memo[4]) -> L4
# gsub("[[a-z][A-Z]]", "", memo[4]) -> L4

memo[5]
gsub("[0-9!<>]", "", memo[5]) -> L5

memo[6]
gsub("[[:space:]]", "", memo[6]) -> L6

memo[7]
gsub(".  ", ". ", memo[7]) -> L7
# 대문자를 소문자로 변경하기

memo_new = c(L1, L2, L3, L4, L5, L6, L7)


# write.table(memo_new,file="memo_new.txt", quote = FALSE, row.names = FALSE)
write(memo_new,file="memo_new.txt")

