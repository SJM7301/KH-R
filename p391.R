#391 연습문제
#391
#(1)
#데이터 정제 또는 데이터 전처리

#(2)
#히스토그램
ds <- c(5.1, 6.0, 6.2, 5.7, 6.8, 5.7, 5.9, 6.3, 5.7)
ds
hist(ds)
#히스토그램

#(3)
#원그래프

#(4)
library(Ecdat)
str(Hdma)
head(Hdma)
#1
tbl <- table(Hdma$self)
tbl
barplot(tbl,
        main = '자영업 여부 확인',
        col = rainbow(2))

tbl <- table(Hdma$single)
tbl

#2
pie(tbl,
    main = '결혼여부 확인',
    col = rainbow(2))

#3
#3-1
boxplot(Hdma$uria,
        main = '실업률 확인')
boxplot.stats(Hdma$uria)
#3-2
#2.0 ~ 4.3

#3-3
#대략 450개, 헤아려서 457개

#3-4
deny.hir <- mean(Hdma$hir[Hdma$deny == 'yes'])
deny.hir
approve.hir <- mean(Hdma$hir[Hdma$deny == 'no'])
approve.hir
cat('승인 거절 :', approve.hir, deny.hir, '\n')

#3-5
#수입대비 주택유지비용이 높으면 대출에 불리하다.