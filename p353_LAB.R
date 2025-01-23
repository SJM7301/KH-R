#p353 LAB
#1
library(DAAG)
str(tinting)

#2
plot(tinting$it, tinting$csoa)

#3
group <- as.numeric(tinting$tint)
color <- c('red', 'green', 'blue')
plot(tinting$it,
     tinting$csoa,
     pch = c(group),
     col = color[group])

#4
group <- as.numeric(tinting$agegp)
color <- c('red', 'blue')
plot(tinting$it,
     tinting$csoa,
     pch = c(group),
     col = color[group])
