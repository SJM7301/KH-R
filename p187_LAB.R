#p187 LAB
#(1) 데이터셋 확인 후 자료구조 확인
class(trees)
str(trees)

#(2)
girth.mean <- mean(trees$Girth)
girth.mean

#(3)
candidate <- subset(trees, Girth >= girth.mean & Height > 80 & Volume > 50)
candidate
nrow(candidate)