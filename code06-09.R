library(xlsx)
my.iris <- subset(iris, Species == 'setosa')
write.xlsx(my.iris, 'my.iris.xlsx', row.names = F)