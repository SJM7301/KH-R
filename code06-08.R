install.packages('xlsx')
library(xlsx)
air <- read.xlsx('airquality.xlsx', header = T, sheetIndex = 1, encoding = 'UTF-8')
air
head(air)