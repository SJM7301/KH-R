dim(iris)
norow <- nrow(iris)
norow
mylable <- c()
for(i in 1:norow) {
  if(iris$Petal.Length[i] <= 1.6) {
    mylable[i] <- 'L'
  } else if(iris$Petal.Length[i] >= 5.1) {
    mylable[i] <- 'H'
  } else {
    mylable[i] <- 'M'
  }
}

print(mylable)
newds <- data.frame(iris$Petal.Length, mylable)
head(newds)