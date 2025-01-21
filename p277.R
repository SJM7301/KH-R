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