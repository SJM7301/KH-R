head(iris)
agg <- aggregate(iris[, -5],
                 by = list(품종 = iris$Species),
                 FUN = mean)

agg