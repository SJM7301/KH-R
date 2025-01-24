x <- iris
x[1, 2] <- NA; x[1, 3] <- NA
x[2, 3] <- NA; x[3, 4] <- NA
head(x)
