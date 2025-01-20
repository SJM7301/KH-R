#p194 연습문제
#(1)
#데이터 프레임

#(2)
#observation
#variable

#(3)
x <- c(2, 4, 6, 8)
y <- c(10, 12, 14, 16)
z <- c(18, 20, 22, 24)
m <- cbind(x, y, z)
m
matrix(c(2, 10, 18,
         4, 12, 20,
         6, 14, 22,
         8, 16, 24),
       nrow = 4, byrow = T
)

matrix(c(2, 4, 6, 8, 
         10, 12, 14, 16,
         18, 20, 22, 24),
       ncol = 3, byrow = F)
#A : 4, B : T
#C : 3, D : F

#(4)
x <- c(9, 7, 5, 3)
y <- c(8, 11, 2, 9)
m <- rbind(x, y)
m

colnames(m) <- c('a', 'b', 'c', 'd')
rownames(m) <- c('x', 'y')
m

#(5) 4번과 이어진다.
#행과 열 바꾸기
t(m)

#매트릭스m을 데이터프레임으로 변경 후 df에 저장
df <- data.frame(m)
class(m)

#df에 벡터 info를 마지막 열 뒤에 추가 후 새로운 데이터 프레임 df.new에 저장
info <- c(1, 2)
df.new <- data.frame(df, info)
df.new

#df.new의 자료구조를 출력
class(df.new)
str(df.new)

#(6)
blood <- c('A', 'O', 'AB', 'B', 'B')
rh <- c('+', '+', '-', '+', '+')
age <- c(21, 30, 43, 17, 26)

#세 벡터를 하나로 묶어 데이터프레임 df에 저장
df <- data.frame(blood, rh, age)
df

#df의 열 이름을 출력
colnames(df)

#blood 열 이름 값이 'B'가 아닌 행들을 추출해 df.nb에 저장
df.nb <- subset(df, blood != 'B')
df.nb

#(7)
str(cars)

#dim(cars)실행결과
dim(cars)

#변수의 이름과 자료형 출력
str(cars)

#(8)
matrix(1:12, nrow = 3) %% 3 #T
matrix(1:12, nrow = 3) + 3 #T
matrix(1:12, nrow = 3) + matrix(1:12, nrow = 4) #F: 행의 길이가 다르다
matrix(1:12, nrow = 3) + matrix(1:12, nrow = 3) #T
rbin(matrix(1:9, nrow = 3), c('1', '2', '3')) + 3 #F: 문자열에 숫자 3을 더하기할 수 없다.

#(9)
#앨범 정보를 2차원 자료구조를 이용하여 저장 후 love변수에 각 열 이름을 저장
번호 <- 1:7
제목 <- c('그대랑', '다툼', '빨래', '두통', '보조개', '매듭', '이상해')
좋아요 <- c(16075, 8218, 12119, 738, 3200, 16144, 5110)
love <- data.frame(번호, 제목, 좋아요)
love

#'좋아요'가 가장 많은 수록곡만 추출하여 변수 best에 저장
best <- subset(love, 좋아요 == max(좋아요))
best

#(10)
#중간고사
이름 <- c('스티브', '엔더맨', '크리퍼')
국어 <- c(97, 88, 100)
역사 <- c(100, 82, 96)
수학 <- c(83, 90, 76)
과학 <- c(95, 91, 89)
영어 <- c(92, 87, 95)

mid <- data.frame(이름, 국어, 역사, 수학, 과학, 영어)
mid

#기말고사
이름 <- c('스티브', '엔더맨', '크리퍼')
국어 <- c(94, 92, 100)
역사 <- c(95, 95, 100)
수학 <- c(90, 87, 85)
과학 <- c(92, 95, 84)
영어 <- c(89, 94, 96)

final <- data.frame(이름, 국어, 역사, 수학, 과학, 영어)
final

#두 시험의 사람별 평균 값
cbind(이름, (mid[, -1] + final[, -1]) / 2)

data.frame(이름, (mid[, -1] + final[, -1]) / 2)

#(11)
#cars 데이터셋의 자료구조는?
class(cars)

#casr 데이터셋의 관측값과 컬럼의 개수는?
