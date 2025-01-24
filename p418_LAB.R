#418 LAB
#(1)
library(carData)
data('CES11')
str(CES11)

#(2)
table(CES11$abortion)
table(CES11$abortion) / nrow(CES11)

#(3)
agg <- aggregate(CES11[, 'abortion'],
                 by = list(성별 = CES11$gender),
                 FUN = table)
agg

agg.2 <- agg[, 2]
agg.2[1, ] <- agg.2[1, ] / sum(agg.2[1, ])
agg.2[2, ] <- agg.2[2, ] / sum(agg.2[2, ])
rownames(agg.2) <- agg[, 1]

agg.2

#(4)
agg <- aggregate(CES11[, 'abortion'],
                 by = list(지역 = CES11$urban),
                 FUN = table)

agg.2[1, ] <- agg.2[1, ] / sum(agg.2[1, ])
agg.2[2, ] <- agg.2[2, ] / sum(agg.2[2, ])
rownames(agg.2) <- agg[, 1]

agg.2