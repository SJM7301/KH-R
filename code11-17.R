head(mtcars)
agg <- aggregate(mtcars,
                 by = list(실린더 = mtcars$cyl,
                 vs = mtcars$vs),
                 FUN = max)

agg