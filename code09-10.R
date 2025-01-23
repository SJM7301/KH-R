vars <- c('mpg', 'disp', 'drat', 'wt')
target <- mtcars[, vars]
head(target)
plot(target,
     main = 'Multi plots')