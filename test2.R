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