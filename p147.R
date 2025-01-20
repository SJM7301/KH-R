#p147
#1번
#리스트, 벡터, 팩터

#2번
a <- c(1, 2); b <- '3'; c <- c(a, b); d <- "4"
#종류가 다른 것은: a

#3번
v1 <- c(6, 1, 3, 7, 9)
v2 <- c(9, 1, 0, 3, 7)

#4번
a <- 25:150
condi <- (a %% 3 == 0) & (a < 100)
cat('condi = ', condi)
sum(condi)

#5번
a <- c('good', 'great', 'bad', 'okay', 'good', 'bad', 'good')
f <- factor(a)
levels(f)

#6번
item <- c(76000, 52000, 36000)
discount <- c(0.05, 0.1, 0.05)
price <- item * (1 - discount)
cat('discount item = ', price)
sum(price)

#7번
smartphon <- list(model = "iphone_se",
                  capacity = c(64, 128, 256),
                  dispaly = 'Retina',
                  color = c('black', 'red', 'white'))
smartphon$color

#8번
weight <- c(56, 23, 89, 46, 76, 14, 97, 72, 68, 62, 35)
names(weight) <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k')
difference <- sum(weight) - 600
condi <- weight == min(weight[weight >= difference])
names(weight[condi])
weight[condi]

#9번
favorite <- c('여름', '봄', '여름', '겨울', '봄', '겨울', '여름', '여름', '봄', '가을')
favorite <- factor(favorite)
levels(favorite)

#10번
country <- c('호주', '독일', '영국', '일본', '미국', '중국', '호주', '영국', '중국', '일본', '터키', '미국', '중국', '중국', '호주', '터키', '독일', '일본', '중국', '독일')
country <- factor(country)
levels(country)
as.integer(country)

#11번
post <- list(
  user_id = 'mr_steve',
  post_id = 'p11010',
  view = 37,
  image = FALSE,
  like = c('creeper', 'alex', 'skeleton', 'enderman')
)
post

#12번
account <- list(
  name = '하늘', #계좌 소유주
  number = 123-468-120566, #계좌 번호
  balance = 4128750, #현재 보유 금액
  history = c(-50000, +20000, -32500, -19000, +42000) #최근 거래 내역: +입금, -출금
)
deposit <- account$history > 0
sum(deposit)
sum(account$history[deposit])

withdraw <- account$history < 0
sum(withdraw)
sum(account$history[withdraw])