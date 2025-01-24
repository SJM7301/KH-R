#p417 확인문제
head(iris)
agg <- aggregate(iris[, 1],
                 by = list(품종 = iris$Species),
                 FUN = max)

agg