#p133 LAB
#1번
espresso <- c(4, 5, 3, 6, 5, 4, 7)
americano <- c(63, 68, 64, 68, 72, 89, 94)
latte <- c(61, 70, 59, 71, 71, 92, 88)

#2번
sale.espresso <- 2 * espresso
sale.americano <- 2.5 * americano
sale.latte <- 3.0 * latte

#3번
sale.day <- sale.espresso + sale.americano + sale.latte
names(sale.day) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')

#4번
sum(sale.day)

#5번
sale.mean <- mean(sale.day)

#6번
names(sale.day[sale.day >= sale.mean])

sale.day