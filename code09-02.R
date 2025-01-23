favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')

ds <- table(favorite)
ds
pie(ds,
    main = '선호 계절',
    col = rainbow(4),
    radius = -1)
