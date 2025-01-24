#p401 LAB
#(1)
library(carData)
str(UN)

#(2)
col_na <- function(y){
  return(sum(is.na(y)))
}

apply(UN, 2, FUN = col_na)

#(3)
mean(UN$lifeExpF, na.rm = T)

#(4)
tmp <- UN[, c('pctUrban', 'infantMortality')]
tmp <- tmp[complete.cases(tmp), ]
colMeans(tmp)

#(5)
tmp <- subset(UN, region == 'Asia')
mean(tmp$fertility, na.rm = T)
