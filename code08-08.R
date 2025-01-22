favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
favorite
ds <- table(favorite)
ds
barplot(ds,
        main = '좋아하는 계절',
        col = 'green',
        las = 2) #las: 0(기본 값), 1(수평 값), 2(축 기준, 수직), 3(축 상관없이 수직)