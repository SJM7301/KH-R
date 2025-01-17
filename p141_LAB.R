#p141 LAB
#1번
cafe <- list(espresso = c(4, 5, 3, 6, 5, 4, 7),
             americano = c(63, 68, 64, 68, 72, 89, 94),
             latte = c(61, 70, 59, 71, 71, 92, 88),
             price = c(2.0, 2.5, 3.0),
             menu = c('espresso', 'americano', 'latte'))

#2번
cafe$menu <- factor(cafe$menu)
cafe$menu

#3번
names(cafe$price) <- cafe$menu
cafe$price

#4번
sale.espresso <- cafe$price['espresso'] * cafe$espresso
sale.espresso
sale.americano <- cafe$price['americano'] * cafe$americano
sale.americano
sale.latte <- cafe$price['latte'] * cafe$latte
sale.latte

#5번
sale.day <- sale.espresso + sale.americano + sale.latte
sale.day
names(sale.day) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
sum(sale.day)
sale.mean <- mean(sale.day)
names(sale.day[sale.day >= sale.mean])