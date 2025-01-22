favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
favorite
ds <- table(favorite)
ds
barplot(ds,
        main = '좋아하는 계절',
        col = 'green',
        xlab = '계절',
        ylab = '빈도수')
