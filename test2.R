#(1)
year.2017 <- c(116215, 3437, 26183, 7522, 147, 1411)
year.2016 <- c(104359, 3393, 24527, 7058, 102, 975)
ds <- rbind(year.2017, year.2016)
colnames(ds) <- c('시', '소설', '수필', '평론', '희곡', '기타')

barplot(ds,
        main = '문인잡지의 작품 발표 현황',
        col = c('tomato', 'orange'),
        xlab = '작품 종류', ylab = '발표 건수',
        beside = F,
        legend.text = c('2017', '2016'))

#(2)
res <- hist(rivers,
            main = '북아메리카의 주요강들의 길이',
            xlab = 'miles',
            col = 'skyblue',
            border = 'navy',
            breaks = 6)
res$breaks
res$counts

#(3)
sunspot <- as.vector(sunspot.year)
color <- rep('skyblue', 10)
color[1] <- 'deeppink'

color.border <- rep('navy', 10)
color.border[1] <- 'violetred'

res <- hist(sunspot,
            main = 'Histogram of Sunspot',
            xlab = 'yearty of number sunspot',
            col = color,
            breaks = 7,
            border = color.border)
res$breaks
res$counts

#(4)
str(trees)
par(mfrow = c(1, 3))
hist(trees$Girth,
     main = 'Girth',
     xlab = 'inch',
     col = 'red',
     breaks = 4)

hist(trees$Height,
     main = 'Height',
     xlab = 'ft',
     col = 'green',
     breaks = 3)

hist(trees$Volume,
     main = 'Volume',
     xlab = 'ft',
     col = 'blue',
     breaks = 4)

#(5)
library(ggplot2)
str(diamonds)
table(diamonds$cut)
table(diamonds$color)
table(diamonds$clarity)
#1
ds <- diamonds

#2
par(mfrow = c(1, 1), mar = c(3, 6, 3, 3))

#3
barplot(table(ds$cut),
        main = 'Quality of the cut',
        las = 1,
        col = 'pink')

#4 (초기화)

#5
barplot(table(ds$depth),
        main = 'Histogram of Dapth',
        xlab = 'percentage',
        col = 'wheat')

#6
par(mfrow = c(2, 1))

#(6)
par(mfrow = c(1, 1))
getwd()
setwd('C:\\Temp')
getwd()

ds <- read.csv('Backpack.csv', header = T)
str(ds)
#1
help(ds)
#2
par(mfrow = c(1, 1), mar = c(5, 4, 4, 2)+.1)
ds <- table(ds$Year, ds$BackProblems)
barplot(ds,
        main = 'Backpack 데이터 활용',
        xlab = 'BackProblems',
        beside = T,
        names = c('No', 'Yes'),
        legend.text = c('0 year', '1 year', '2 year', '3 year',
                        '4 year', '5 year', '6 year'),
        args.legend = list(x = 'topright', bty = 'n', inset = c(0, 0)))

#3
Backpack.pb <- read.csv('Backpack.csv', header = T)
str(Backpack.pb)
Backpack.pb <- subset(Backpack.pb, BackProblems == 1)
Backpack.pb
ds.pb <- table(Backpack.pb$Year, Backpack.pb$Sex)

barplot(ds.pb,
        main = 'Backpack 허리 문제',
        beside = T,
        legend.text = c('1 year', '2 year', '3 year','4 year', '5 year'))
