#p100 LAB
#1번
customer <- c('Kim', 'Lee', 'Park', 'Choi', 'Seo')
deposit <- c(5000000, 4500000, 4000000, 5500000, 6000000)
rate <- c(3.5, 3, 4, 5, 4.5)
period <- c(2, 2, 5, 7, 4)

#2번
names(deposit) <- customer
names(rate) <- customer
names(period) <- customer

#3번
who <- 'Kim'

#4번
sum <- deposit[who] * (1 + rate[who] / 100) ^ period[who]
sum

#5번
who <- 'Lee'