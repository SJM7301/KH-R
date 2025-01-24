combn(1:5, 3)
x <- c('red', 'green', 'blue', 'black', 'white')
com <- combn(x, 2)
com

for(i in 1:ncol(com)){
  cat(com[, i], '\n')
}