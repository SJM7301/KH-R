install.packages('carData')
library(carData)
str(TitanicSurvival)

room.class <- TitanicSurvival$passengerClass
room.class

tbl <- table(room.class)
tbl
sum(tbl)

barplot(tbl,
        main = '선실별 탑승객',
        xlab = '선실 등급',
        ylab = '탑승객 수',
        col = rainbow(3))

tbl / sum(tbl)
pie(tbl,
    main = '선실별 탑승객',
    col = rainbow(3))