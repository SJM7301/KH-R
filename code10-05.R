head(cars)

plot(cars$speed,
     cars$dist,
     main = '자동차 속도와 제동거리',
     xlab = '속도',
     ylab = '제동거리')

cor(cars$speed, cars$dist)