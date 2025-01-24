str(state.x77)
head(state.x77)

grad <- state.x77[, 'HS Grad']
grad

summary(grad) #전체 데이터의 사분위
var(grad) #분산
sd(grad) #표준편차

hist(grad,
     main = '주별 졸업률',
     xlab = '졸업률',
     ylab = '주의 개수',
     col = 'orange')

boxplot(grad,
        main = '주별 졸업률',
        col = 'orange')

idx <- which(grad == min(grad))
grad[idx]

idx <- which(grad < mean(grad))
grad[idx]