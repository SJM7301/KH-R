age.A <- c(13079, 10974, 7979, 5000, 4250)
age.B <- c(17540, 23701, 36209, 33947, 24487)
age.C <- c(991, 2195, 5366, 12980, 19007)

ds <- rbind(age.A, age.B, age.C)
colnames(ds) <- c('1970', '1990', '2010', '2030', '2050')
ds

barplot(ds,
        main = '인구 추정',
        col = c('green', 'blue', 'yellow'),
        beside = T)