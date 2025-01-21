#p222 확인문제
setwd('C:\\Temp')
my.iris <- subset(iris, Species == 'setosa')
write.table(my.iris, 'my_iris.txt', sep = '\t')
new.iris <- read.table('my_iris.txt', header = T, sep = '\t')
new.iris