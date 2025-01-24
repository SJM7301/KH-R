#p396 확인문제
#(1)
str(airquality)
ozone <- airquality$Ozone
ozone
sum(is.na(ozone))

#(2)
ozone.pure <- as.vector(na.omit(ozone))
ozone