#407 LAB
#(1)
library(carData)
str(Highway1)

#(2)
Highway1[order(Highway1$rate, decreasing = T), ]

#(3)
tmp <- Highway1[order(Highway1$len, decreasing = T), 'len']
tmp
sum(tmp[1:10])

#(4)
tmp <- Highway1[order(Highway1$adt), c('adt', 'rate')]
tmp
tmp[1:10, ]

#(5)
tmp <- Highway1[order(Highway1$slim, decreasing = T), c('len', 'adt', 'rate')]
tmp
tmp[1:5, ]