#354 실전 분석
#1
library(DAAG)
str(socsupport)
help(socsupport)

#2
library(plotrix)
ds <- table(socsupport$age)
pie3D(ds,
      main = '연령 분포',
      labels = names(ds),
      labelcex = 1.0,
      explode = 0.1,
      radius = 1.5,
      col = rainbow(length(ds)))

#3
boxplot(socsupport$emotional ~ socsupport$country,
        main = '정서적 지원 제도 비교')

#4
boxplot(socsupport$emotionalsat ~ socsupport$gender,
        main = '정서적 지원 제도 만족도 비교')

#5
boxplot(socsupport$emotionalsat ~ socsupport$age,
        main = '정서적 지원 제도 만족도 비교',
        col = rainbow(5))

#6
group <- as.numeric(socsupport$gender)
color <- c('blue', 'red')
plot(socsupport[, c('emotionalsat', 'tangiblesat', 'age')],
     pch = group,
     col = color[group])