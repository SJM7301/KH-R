#p358 연습문제
#(1)
#1
library(carData)
str(MplsStops)
race <- MplsStops$race
ds <- table(race)

pie(ds,
    radius = 1)

#2
str(MplsStops$problem)
color <- c('red', 'blue')
problem <- MplsStops$problem
problem <- table(problem)

pie(problem,
    col = color,
    radius = 1)

#3
str(MplsStops$personSearch)

personSearch <- MplsStops$personSearch
personSearch <- table(personSearch)

pie(personSearch,
    radius = 1)

#4
str(MplsStops$gender)
gender <- MplsStops$gender
gender <- table(gender)
color <- c('green', 'orange', 'yellow')

pie3D(gender,
      col = color,
      labels = names(gender),
      labelcex = 1.0,
      radius = 1)

#(2)
library(DAAG)
data(greatLakes)
ds <- data.frame(year = 1918:2009, greatLakes)
ds
#1
str(greatLakes)
dsE <- ds$Erie
dsY <- ds$year

plot(dsY,
     dsE,
     main = 'Erie호의 연도별 수위 변화',
     type = 'l',
     xlab = '연도',
     ylab = '수위')

#2
dsM <- ds$michHuron
dsY

plot(dsY,
     dsM,
     type = 'b',
     xlab = '연도',
     ylab = '수위',
     col = 'red')

#3
plot(dsY,
     dsE,
     main = 'Erie, michHuron, StClair 호수의 연도별 수위 변화',
     type = 'b',
     xlab = '연도',
     ylab = '수위',
     ylim = c(173, 177.5),
     col = 'red')

lines(dsY,
     dsM,
     type = 'b',
     col = 'green')

dsS <- ds$StClair

lines(dsY,
      dsS,
      type = 'b',
      col = 'blue')

#(3)
library(DAAG)
str(cfseal)
#1
boxplot(cfseal$weight)
boxplot.stats(cfseal$weight)

#2
boxplot(cfseal$heart)
boxplot.stats(cfseal$heart) #1012, 1075

#3
group <- rep('old', nrow(cfseal))
group

group[cfseal$age < mean(cfseal$age)] <- 'young'
group <- factor(group)
group

color <- c('orange', 'green')
boxplot(cfseal$weight~group,
        col = color)

#4
group <- rep('middle', nrow(cfseal))
group
Q1 <- summary(cfseal$weight)[2]
Q1

Q3 <- summary(cfseal$weight)[5]
Q3

boxplot.stats(cfseal$weight)
group[cfseal$weight < Q1] <- 'low'
group[cfseal$weight > Q3] <- 'high'
group
group <- factor(group)
group

boxplot(cfseal$weight~group)

#(4)
library(DAAG)
data(greatLakes)
ds <- data.frame(greatLakes)
#1
plot(ds$Erie,
     ds$michHuron,
     col = c('red', 'blue'))

#2
plot(ds,
     col = rainbow(4))

#(5)
library(DAAG)
str(grog)
#1
plot(grog$Beer, grog$Wine,
     main = '맥주와 와인에 대한 산점도',
     col = c('red', 'blue'))

#2
group <- as.numeric(grog$Country)
group
color <- c('red', 'blue')
plot(grog[, c('Beer', 'Wine', 'Spirit')],
     pch = group,
     col = color)