#p230 연습문제
#(1)
library(svDialogs)
input.value <- dlgInput('Input a value')$res

#(2)
cat("\n")

#(3)
#A: 작업폴더
#B: getwd
#C: setwd

#(4)
#csv(comma seperated, value)

#(5)
library(xlsx)
ds <- read.xlsx('search.xlsx', header = T, sheetIndex = 1)
write.xlsx(ds, 'search_new.txt', row.names = F)

#(6)
sink('result.txt', append = T)
cat(height, weight, bmi)
sink()

#(7)
library(svDialogs)
base <- dlgInput('삼각형의 밑변 입력')$res
height <- dlgInput('삼각형의 높이 입력')$res
base <- as.numeric(base)
height <- as.numeric(height)
area <- (1 / 2) * base * height
area
cat('삼각형의 넓이 = ', area)

#(8)
read.table('ds_tab.txt', sep = "\t", header = F)

#(9)
ds <- read.table('ds.txt', sep = ' ', header = F)
ds
write.csv(ds, 'ds.csv', row.names = F)

#(10)
library(xlsx)
write.xlsx(iris, 'iris.xlsx', row.names = F)
new.iris <- read.xlsx('iris.xlsx', sheetIndex = 1)
new.iris

#(11)
library(svDialogs)
sink('log.txt')
cat('----- x * y ----- \n')
sink()
x <- as.numeric(dlgInput('Input x')$res)
y <- as.numeric(dlgInput('Input y')$res)
sink('log.txt', append = T)
cat('x = ', x, 'y = ', y, 'result = ', x * y)
sink()