x <- 1:4 #1 ~ 4 벡터 x 생성
y <- 5:8 #5 ~ 8 벡터 y 생성
z <- matrix(1:20, nrow = 4, ncol = 5) #매트릭스 z 생성

m1 <- cbind(x, y) #x와 y를 열 방향으로 결합하여 매트릭스 생성
m1
m2 <- rbind(x, y) #x와 y를 행 방향으로 결합하여 매트릭스 생성
m2
m3 <- rbind(m2, x) #매트릭스 m2와 벡터 x를 행 방향으로 결합
m3
m4 <- cbind(z, x) #매트릭스 z와 벡터 x를 열 방향으로 결합
m4