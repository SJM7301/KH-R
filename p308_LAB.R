#p308 LAB
#(1)
library(Stat2Data)
data(Diamonds)
str(Diamonds)
ds <- Diamonds$PricePerCt

#(4)
color <- rep('#a8dadc', 9)
color[3] <- '#1d3557'

#(2)
hist(ds,
     main = '캐럿당 가격 분포',
     breaks = 9,
     xlab = '캐럿당 가격($)', ylab = '빈도수', las = 1,
     col = color,
     border = '#457b9d')