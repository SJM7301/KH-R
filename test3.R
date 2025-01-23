#(1)
library(DAAG)
str(austpop)

plot(austpop$year,
     austpop$NSW,
     type = 'l',
     col = 'red',
     xlim = c(1917, 1997),
     xlab = '연도',
     ylab = '인구 변동')

lines(austpop$year,
      austpop$Vic,
      col = 'green')

lines(austpop$year,
      austpop$Qld,
      col = 'blue')

#===================================
my.col <- c('red', 'green', 'blue')
state <- c('NSW', 'Vic', 'Qld')

plot(austpop$year,
     austpop[, state[1]],
     main = '인구 변동에 대한 데이터',
     xlim = c(1917, 1997),
     type = 'l',
     xlab = '연도',
     ylab = '인구 변동',
     col = my.col[1])

legend(x='topleft',
       legend = state,
       col = my.col,
       pch=c(1:3))


for(i in 2:3){
  lines(austpop$year,
        austpop[, state[i]],
        col = my.col[i])
}

#(2)
library(DAAG)
str(hotspots)

plot(houseprices$area, houseprices$sale.price,
     main = '주택정보',
     col = c('red', 'blue'))