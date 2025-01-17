sales <- c(640, 720, 680, 540)
names(sales) <- c('M1', 'M2', 'M3', 'M4')
sales
sales[1] #M1값 출력
sales['M2'] #M2값 출력
sales[c('M1', 'M4')] #M1, M4값 출력
 #sales[4] <- 600 #변수값 변경