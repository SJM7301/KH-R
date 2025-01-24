head(iris)
order(iris$Sepal.Length)
iris[order(iris$Sepal.Length), ]
iris[order(iris$Sepal.Length, decreasing = T), ]
iris.new <- iris[order(iris$Sepal.Length), ]
head(iris.new)
iris[order(iris$Species, decreasing = T, iris$Petal.Length), ]