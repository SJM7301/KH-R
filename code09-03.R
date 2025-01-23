install.packages('plotrix')
library(plotrix)

favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')

ds <- table(favorite)
ds
pie3D(ds,
    main = '선호 계절',
    labels = names(ds),
    labelcex = 1.0,
    explode = 0.1,
    radius = 1.5,
    col = rainbow(4))