#p336 LAB
#1
install.packages('DAAG')
library(DAAG)
str(science)

ds <- table(science$like)
pie(ds,
    main = '선호 점수별 비율',
    col = rainbow((ds)),
    radius = 1)

#2
library(plotrix)
str(science)

ds <- table(science$State)
pie3D(ds,
      main = '주별 학생 비율',
      labels = names(ds),
      labelcex = 1.0,
      explode = 0.1,
      radius = 1.5,
      col = c('brown', 'green'))

#3
year = 1875:1972
ds <- data.frame(year, LakeHuron)

plot(ds$year,
     ds$LakeHuron,
     main = '수위 변화',
     type = 'b',
     lty = 1,
     col = 'blue',
     xlab = '연도',
     ylab = '수위')