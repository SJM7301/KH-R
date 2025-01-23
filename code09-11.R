iris.2 <- iris[, 3:4]
head(iris.2)
levels(iris$Species)
group <- as.numeric(iris$Species)
group
color <- c('red', 'green', 'blue')
plot(iris.2,
     main = 'Iris plot',
     pch = c(group),
     col = color[group])