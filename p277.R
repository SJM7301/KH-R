#p277 연습문제
#(1)
n <- 12
if(n %% 2 == 1){
  type <- 'odd'
} else{
  type <- 'even'
}
print(type)

#(2)
res <- ifelse(n < 0, -n, n)
res

#(3)
input <- 1:10
n <- length(input)
switch <- TRUE

result <- 1

if(switch == T){
  for(i in 1:n){
    result <- result * i
  }
} else {
  result <- sum(input)
}
print(result)

#(4)
n <- seq(1, 20, by = 2)
n
res <- 1

for(i in n){
  res <- res * i
}
print(res)

res <- 1

for (i in 1:20) {
  if(i%%2==1){
    res <- res * i
  }
}
print(res)

#(5)
n <- seq(1, 20, by=2)
n
i <- 1
res <- 1

while(i <= length(n)) {
  #print(i)
  res <- res * n[i]
  i <- i + 1
}
print(res)

#(6)
str(mtcars)
apply(mtcars[c('mpg', 'hp', 'wt')], 2, mean)

#(7)
triangle.area <- function(base, height){
  area <- (base * height) / 2
  return(area)
}

triangle.area(5.2, 4.6)
#=============================
getwd()
setwd('C:\\Rcode')
getwd()
source('mytriangle.R')

#(8)
multiple.answer <- function(data){
  res.min <- min(data)
  res.max <- max(data)
  res.avg <- mean(data)
  result <- list(min = res.min, max = res.max, avg = res.avg)
}

data <- c(1, 3, 5, 7, 9)
result <- multiple.answer(data)
cat('min:', result$min, 'max:', result$max, 'avg:', result$avg, '\n')

#(9)
str(mtcars)
idx.max <- which.max(mtcars$mpg)
idx.max
rownames(mtcars[idx.max, ])
rownames(mtcars)[idx.max]

idx.min <- which.min(mtcars$mpg)
idx.min
rownames(mtcars[idx.min, ])
rownames(mtcars)[idx.min]

#(10) drow.io

#(11)
a <- c(0, 1)
for(i in 3:20){
  a[i] <- a[i - 1] + a[i - 2]
}
print(a)

#(12)
str(USArrests)
head(USArrests)

#1
apply(USArrests[c('Murder', 'Assault', 'Rape')], 1, sum)

#2
apply(USArrests[c('Murder', 'Assault', 'Rape')], 2, mean)

#3
rownames(USArrests[which.max(USArrests$Murder), ])

#4
USArrests[which.min(USArrests$Assault), 'Murder']
USArrests$Murder[which.min(USArrests$Assault)]