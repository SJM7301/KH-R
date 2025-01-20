#p181 확인문제
str(mtcars)
#(1)
colSums(mtcars) #열별 합계
colMeans(mtcars) #열별 평균

#(2)
rowSums(mtcars) #행별 합계
rowMeans(mtcars) #행별 평균

#(3)
subset(mtcars, hp >= 100 & hp < 200)

#(4)
(mtcars[, 1:3] * 0.9) + 1

mtcars[, 4]