#p223 LAB
library(svDialogs)

height <- dlgInput('Input height(cm)')$res
weight <- dlgInput('Input weight(kg)')$res

height <- as.numeric(height)
weight <- as.numeric(weight)

height <- height / 100
bmi <- weight / (height^2)

sink('bmi.txt', append = T)
cat(height * 100, weight, bmi)
cat('\n')
sink()

height <- dlgInput('Input height(cm)')$res
weight <- dlgInput('Input weight(kg)')$res

height <- as.numeric(height)
weight <- as.numeric(weight)

height <- height / 100
bmi <- weight / (height^2)

sink('bmi.txt', append = T)
cat(height * 100, weight, bmi)
cat('\n')
sink()

result <- read.table('bmi.txt', sep = " ")
result

names(result) <- c('height', 'weight', 'bmi')
write.table(result, 'bmi_new.txt', row.names = F)

cat('입력한 키는 ', height * 100, 'cm, 몸무게는 ', weight, 'kg 입니다.\n', sep = "")
cat('BMI는 ', bmi, '입니다.', sep = "")