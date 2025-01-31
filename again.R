#p427
install.packages('treemap')
library(treemap)
data(GNI2014)
str(GNI2014)
help(GNI2014)

treemap(GNI2014,
        index = c('continent', 'iso3'),
        vSize = 'population',
        vColor = 'GNI',
        type = 'value',
        bg.labels = 'yellow',
        title = 'Worlds GNI')

#p428
library(treemap)
st <- data.frame(state.x77)
str(st)
head(st)
st <- data.frame(st, stname = rownames(st))
head(st)

treemap(st,
        index = c('stname'),
        vSize = 'Area',
        vColor = 'Income',
        type = 'value',
        title = 'USA states area and income')

treemap(st,
        index = c('stname'),
        vSize = 'Population',
        vColor = 'Illiteracy',
        type = 'value',
        title = 'USA states 인구와 문맹률')

#p431
library(treemap)
library(carData)
str(Ericksen)
head(Ericksen)
Ericksen
ds <- subset(Ericksen, city == 'state')
head(ds)
ds$stname <- rownames(ds)
head(ds)

treemap(ds,
        index = c('stname'),
        vSize = 'poverty',
        vColor = 'crime',
        type = 'value',
        title = '미국의 가난 및 범죄율')

treemap(ds,
        index = c('stname'),
        vSize = 'housing',
        vColor = 'minority',
        type = 'value',
        palette = heat.colors(nrow(ds)),
        title = '미국의 소규모주택 및 소수인종 비율')

#p438
library(carData)
str(SLID)
head(SLID)
#1
ds <- SLID[complete.cases(SLID), ]
head(ds)
#2
ds <- SLID[complete.cases(SLID), ]
boxplot(wages~sex,
        data = ds,
        main = '성별 임금',
        col = c('green', 'steelblue'))

#3
ds <- SLID[complete.cases(SLID), ]
boxplot(wages~language,
        data = ds,
        main = '사용언어별 임금',
        col = c('green', 'steelblue', 'yellow'))

#4
ds <- SLID[complete.cases(SLID), ]
ds$group <- NA
head(ds)
ds$group[ds$education < 10] <- 'A'
ds$group[ds$education >= 10 & ds$education < 13] <- 'B'
ds$group[ds$education >= 13 & ds$education < 15] <- 'C'
ds$group[ds$education >= 15 & ds$education < 18] <- 'D'
ds$group[ds$education >= 18] <- 'E'
head(ds)

boxplot(wages~group,
        data = ds,
        main = '교육기간별 임금',
        col = rainbow(5))

#p440
install.packages('fmsb')
library(fmsb)
score <- c(80, 60, 95, 85, 40)
max.score <- rep(100, 5)
max.score
min.score <- rep(0, 5)
min.score

ds <- rbind(max.score, min.score, score)
ds
ds <- data.frame(ds)
str(ds)
head(ds)
colnames(ds) <- c('국어', '영어', '수학', '물리', '음악')
ds
radarchart(ds,
           pcol = 'darkgreen',
           pfcol = rgb(0.2, 0.5, 0.5, 0.5),
           plwd = 3,
           cglcol = 'red',
           cglty = 2,
           cglwd = 1,
           axistype = 1,
           seg = 4,
           axislabcol = 'blue',
           caxislabels = seq(0, 100, 25)
)

#p444
#1
library(carData)
str(WVS)
head(WVS)
#2
pop <- table(WVS$country)
pop
tmp <- subset(WVS, religion == 'yes')
tmp
rel <- table(tmp$country)
rel
stat <- rel / pop
stat

#3
max.score <- rep(1, 4)
min.score <- rep(0, 4)
ds <- rbind(max.score, min.score, stat)
ds
ds <- data.frame(ds)
ds
radarchart(ds,
           pcol = 'darkgreen',
           pfcol = rgb(0.2, 0.5, 0.5, 0.5),
           plwd = 3,
           cglcol = 'red',
           cglty = 2,
           cglwd = 1,
           axistype = 1,
           seg = 4,
           axislabcol = 'blue',
           caxislabels = seq(0, 100, 25),
           title = '국가별 종교인 비율')

#p456
#1
library(ggplot2)
head(airquality)
df <- aggregate(airquality[, 'Temp'], by=list(월=airquality$Month), mean)
df
ggplot(df, 
       aes(x=월, y=x)) +
  geom_bar(stat = 'identity',
           width = 0.7,
           fill = 'green')
#2
df <- airquality[complete.cases(airquality), ]
str(df)
head(df)
ggplot(data = df,
       aes(x=factor(Month), y=Ozone, fill = factor(Month))) +
  geom_boxplot()
#3
ggplot(data = df,
       aes(x=Temp, y=Ozone, color = 'orange')) + 
  geom_point(size = 2)

#4
df.7 <- subset(df, Month == 7)
df.7
ggplot(data = df.7,
       aes(x=Day, y=Ozone)) + geom_line(col = 'red')

#p456
library(carData)
#1
data(UN98)
str(UN98)
head(UN98)
help(UN98)
#2
df <- UN98[, c('region', 'tfr')]
df <- df[complete.cases(df), ]
df <- aggregate(df[, 'tfr'], by=list(지역=df$region), mean)

ggplot(df, aes(x=지역, y=x)) + 
  geom_bar(stat = 'identity', 
           width = 0.7,
           fill = rainbow(5))
#3
library(treemap)
str(UN98)
head(UN98)

df <- UN98[, c('region', 'lifeFemale', 'illiteracyFemale')]
df <- df[complete.cases(df), ]
head(df)
df$country <- rownames(df)
head(df)
treemap(df,
        index = c('region', 'country'),
        vSize = 'lifeFemale',
        vColor = 'illiteracyFemale',
        type = 'value',
        bg.labels = 'yellow',
        title = '세계여성의 평균수명과 문맹률')
#4
library(ggplot2)
str(UN98)
head(UN98)

df <- UN98[, c('region', 'educationMale' ,'educationFemale')]
df <- df[complete.cases(df), ]

ggplot(data = df,
       aes(x=educationMale, y=educationFemale, color = region)) + 
  geom_point(size=3) + 
  ggtitle('남성, 여성의 교육 수준')

#p462~463
#01
#1번
library(treemap)
str(state.x77)
head(state.x77)
st <- data.frame(state.x77)
str(st)
head(st)
st <- data.frame(st, stname=rownames(st))
head(st)
treemap(st,
        index = c('stname'),
        vSize = 'Life.Exp',
        vColor = 'Murder',
        type = 'value',
        title = '미국의 기대수명과 살인범죄율')

#2번
str(state.x77)
head(state.x77)
st <- data.frame(state.x77)
head(st)
st <- data.frame(st, stname=rownames(st), region=state.region)
head(st)
treemap(st, 
        index = c('region', 'stname'),
        vSize = 'Life.Exp',
        vColor = 'Murder',
        type = 'value',
        bg.labels = 'yellow',
        title = '미국의 기대수명과 살인범죄율')
#3번
#Alabama
#4번
head(state.x77)
df <- data.frame(state.x77, region=state.region)
df
head(df)
boxplot(Murder~region,
        data = df,
        main = '미국의 지역별 살인범죄율 분포',
        col = 'orange')
#5번
head(state.x77)
df <- data.frame(state.x77, region=state.region)
region.avg <- aggregate(df$Illiteracy, by=list(지역=df$region), mean)[2]
region.avg
odr <- rank(-region.avg)
odr
boxplot(Illiteracy~region,
        data = df,
        main = '지역별 문맹률',
        col = heat.colors(length(odr))[odr])
#6번
str(airquality)
head(airquality)
month.avg <- aggregate(airquality$Solar.R, by=list(airquality$Month), mean)[2]
month.avg

ord <- rank(-month.avg)
ord

boxplot(Solar.R~Month,
        data = airquality,
        main = '월별 일조량',
        col = heat.colors(length(ord))[ord])

#02
library(fmsb)
str(airquality)
head(airquality)
air <- airquality[, c('Solar.R', 'Month')]
head(air)
air <- air[complete.cases(air), ]
head(air)

month.avg <- aggregate(air$Solar.R, by=list(월별=air$Month), mean)
month.avg

max.score <- rep(200, 5)
min.score <- rep(100, 5)
ds <- rbind(max.score, min.score, month.avg$x)
ds
ds <- data.frame(ds)
ds
colnames(ds) <- month.avg$월별
ds
radarchart(ds,
           pcol = 'darkgreen',
           pfcol = rgb(0.2, 0.5, 0.5, 0.5),
           plwd = 3,
           cglwd = 0.8,
           axistype = 1,
           seg = 4,
           axislabcol = 'grey',
           caxislabels = c(0, 100,25))
#03
library(fmsb)
iris.mean <- colMeans(iris[, 1:4])
iris.mean
max.score <- rep(6, 4)
min.score <- rep(1, 4)

ds <- rbind(max.score, min.score, iris.mean)
ds
ds <- data.frame(ds)
ds

radarchart(ds,
           pcol = 'darkgreen',
           pfcol = rgb(0.2, 0.5, 0.5, 0.5),
           plwd = 3,
           cglwd = 0.8,
           axistype = 1,
           seg = 5,
           axislabcol = 'grey',
           caxislabels = seq(1, 6, 1))

#04
library(carData)
library(ggplot2)
str(States)
head(States)

#1번
region.sum <- aggregate(States[, 'pop'], by = list(지역 = States$region), sum)
region.sum
ggplot(region.sum,
       aes(x = 지역, y = x)) + 
  geom_bar(stat = 'identity',
           width = 0.7,
           fill = rainbow(nrow(region.sum))) + 
  ggtitle('지역별 총 인구')

#2번
ggplot(States,
       aes(x = dollars)) +
  geom_histogram(binwidth = 0.5,
                 fill = 'green',
                 col = 'blue') +
  coord_flip()

#3번
ggplot(States,
       aes(x = SATV, y = SATM)) + 
  geom_point()
cor(States$SATV, States$SATM)

#4번
df <- subset(States, region %in% c('ESC', 'PAC'))
df
ggplot(data = df,
       aes(x=SATV, y=SATM, color = region)) + 
  geom_point(size = 3)

#5번
#ESC지역의 언어점수, 수학점수가 PAC지역보다 월등히 높다.

#6번
ggplot(States,
       aes(x = region, y = pay,
           fill = region)) + 
  geom_boxplot()

#7번
ggplot(States,
       aes(x = region, y = percent,
           fill = region)) + 
  geom_boxplot() +
  ggtitle('지역별 SAT 응시 비율')

#8번
ggplot(Hartnagel,
       aes(x = year, y = tfr)) + 
  geom_line()