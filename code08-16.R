head(cars)
dist <- cars[, 2]
dist
result <- hist(dist,
     main = 'Histogram for 제동거리',
     xlab = '제동거리',
     ylab = '빈도수',
     border = 'blue',
     col = 'green',
     las = 2,
     breaks = 5)
result
freq <- result$counts
names(freq) <- result$breaks[-1]
freq