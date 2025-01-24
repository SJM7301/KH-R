head(x)
x[!complete.cases(x), ]
y <- x[complete.cases(x), ]
head(y)
