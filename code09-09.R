wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg,
     main = '중량-연비 그래프',
     xlab = '중량',
     ylab = '연비(MPG)',
     col = rainbow(2),
     pch = 21)