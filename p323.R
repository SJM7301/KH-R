#p323 연습문제
#(1)
#A: 막대그래프, B: 히스토그램

#(2)
survey <- c(T, F, T, T, F, T, F, F, F, F)
colors()
barplot(table(survey),
        main = '찬반 의견 결과',
        names = c('No', 'Yes'),
        col = c('red', 'blue'))

#(3)
barplot(table(mtcars$cyl),
        main = '실린더 종류별 분포',
        horiz = T,
        las = 1,
        ylab = '실린더의 수',
        col = rainbow(3))

#(4)
ds <- sleep$extra
ds
hist(ds,
     main = 'Histogram of sleep',
     xlap = 'Increase in hours of sleep',
     breaks = 4)

#(5)
ds <- table(mtcars$cyl, mtcars$gear)
color <- c('tomato', 'salmon', 'peachpuff')
barplot(ds,
        main = 'Distribution of carburetors',
        xlab = 'Number of gear',
        ylab = 'frequency',
        col = color,
        legend.text = c('cyl 4', 'cyl 6', 'cyl 8'),
        beside = T,
        args.legend = list(x = 'topright', bty = 'n', inset = c(0, 0)))

#(6)
ds <- trees$Height
color.6 <- rep('#f1faee', 6)
color.6[3:5] <- '#e63946'
hist(ds,
     main = 'Histogram of Black Cherry Trees',
     xlab = 'Height(ft)',
     ylab = 'Frequency',
     col = color.6)


#(7)
par(mfrow = c(2, 3),
    mar = c(5, 4, 4, 3))

#(8)
male <- c(6.9, 30.4, 80.4)
female <- c(4.9, 38.2, 82.7)
ds <- rbind(male, female)
colnames(ds) <- c('samsung', 'apple', 'huawei')
color.2 <- c('#ffe66d', '#00afb9')
barplot(ds,
        main = '성별에 따른 브랜드 선호도',
        col = color.2,
        horiz = T,
        beside = T,
        las = 1,
        legend.text = c('남자', '여자'),
        args.legend = list(x = 'right', bty = 'n', inset = c(-0.1, 0)))

#(9)
holyday <- c(14, 15, 15, 16, 14, 11, 12)
holyday.actual <- c(15, 35, 38, 36, 34, 32, 32)
ds <- rbind(holyday, holyday.actual)
colnames(ds) <- c('한국', '일본', '독일', '러시아', '미국', '프랑스', '호주')

barplot(ds,
        main = '주요 국가별 공휴일 현황',
        col = c('grey', 'skyblue'),
        beside = T,
        xlab = '국가',
        las = 1,
        legend.text = c('공휴일 수', '실제 쉬는 날'),
        args.legend = list(x = 'topleft', bty = 'n', inset = c(-0.09, -0.05)))
