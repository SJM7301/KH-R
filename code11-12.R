idx <- sample(1:nrow(iris), size = 50, replace = F)
iris.50 <- iris[idx, ]
dim(iris.50)
head(iris.50)