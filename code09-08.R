boxplot(Petal.Length ~ Species,
        data = iris,
        mian = '품종별 꽃잎의 길이',
        col = c('green', 'yellow', 'blue'))

boxplot.stats(iris$Sepal.Length)
