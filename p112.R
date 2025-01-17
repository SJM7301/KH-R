#p112
#1번
a <- 7
b <- 9
c <- a * b
c

#2번
a <- 90
b <- 60
c <- 80
d <- (360 - (a + b + c))
d

#3번
a <- 4
b <- 3
s <- ((a * b) / 2)
s

#4번
v1 <- 20
v2 <- 30
avg <- ((60 / v1) + (60 / v2))
avg

#5번
sugar <- 25
water <- 125
percent <- sugar / (sugar + water) * 100
print(percent)

#6번
v <- c(92, 43, 55, 28, 19)
v

#7번
v1 <- c('cyan', 'magenta', 'yellow', 'black')
v1

v2 <- c(T, F, T)
v2

v3 <- c(37.5, 8.2, 9.6, 11.8, 24.9)
v3

#8번
v <- c(1, 2, 3, 4)
sum(v)

#9번
v1 <- c('T', 'T', 'T', 'F', 'T', 'F', 'F', 'T', 'T', 'F')
sum(v1)

v2 <- c(T, T, T, F, T, F, F, T, T, F)
sum(v2)

#10번
sum(1:5000)

#11번
even <- seq(2, 100, 2)
sum(even)

#12번
#(1)
d <- c(1:100)
d

#(2)
odd <- d[seq(1, 100, 2)]
odd

#(3)
odd[-c(41:50)]

#(4)
pick <- odd[c(3, 7, 32)]
pick

#(5)
names(pick) <- c('3rd', '7th', '32th')
pick

#(6)
pick[-c(2)]
pick

#(7)
pick[1] <- c(3)
pick