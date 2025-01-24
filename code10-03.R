getwd()
setwd('C:\\Temp')
getwd()

ds <- read.csv('fdeaths.csv', row.names = 'year')
str(ds)
head(ds)

my.col <- c('black', 'blue', 'red', 'green', 'purple', 'darkgray')
my.lty <- 1:6

plot(1:12,
     ds[1, ],
     main = '월별 사망자 추이',
     type = 'b',
     lty = my.lty[1],
     xlab = 'Month',
     ylab = '사망자 수',
     ylim = c(300, 1200),
     col = my.col[1])

for(i in 2:6){
  lines(1:12,
        ds[i, ],
        type = 'b',
        lty = my.lty[i],
        col = my.col[i])
}

legend(x = 'topright',
       lty = my.lty,
       col = my.col,
       legend = 1974:1979)