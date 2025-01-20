#p189 실전분석
#(1)
install.packages('reshape2')
library(reshape2)
str(tip)

#(2)
is.matrix(tips)
class(tips)

#(3)
head(tips)

#(4)
str(tips)

#(5)
table(tips$day)

#(6)
dinner <- subset(tips, time == 'Dinner')
dinner
lunch <- subset(tips, time == 'Lunch')
lunch

table(dinner$day)
table(lunch$day)

#(7)
colMeans(dinner[c('total_bill', 'tip', 'size')])
colMeans(lunch[c('total_bill', 'tip', 'size')])

#(8)
tip.rate <- tips$tip / tips$total_bill
mean(tip.rate)

#============================================
#성별 팀의 평균 금액
idx <- subset(tips, tips$sex == 'Female')
avg.female <- mean(idx$tip)
avg.female

idx <- subset(tips, tips$sex == 'Male')
avg.male <- mean(idx$tip)
avg.male