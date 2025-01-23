#p336 확인문제
str(ChickWeight)
c1 <- subset(ChickWeight, Chick == 1)
c21 <- subset(ChickWeight, Chick == 21)

plot(c1$Time,
     c1$weight,
     main = '병아리 체중변화',
     type = 'b',
     lty = 1,
     col = 'red',
     xlab = 'Weight',
     ylim = c(40, 400))

lines(c21$Time,
      c21$weight,
      type = 'b',
      col = 'blue')