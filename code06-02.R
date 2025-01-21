install.packages('svDialogs')
library(svDialogs)
user.input <- dlgInput('Input income')$res
user.input
income <- as.numeric(user.input)
income
tax <- income * 0.05
cat('세금: ', tax)