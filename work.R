library(ggplot2)

library(dplyr)
install.packages("dplyr")
library(dplyr)

# ggplot2의 midwest 데이터를 데이터 프레임형태로 불러오기

midwest <- as.data.frame(ggplot2::midwest)
#복사본 만들기
midwest_new <- midwest

head(midwest_new)

tail(midwest_new)

View(midwest_new)

dim(midwest_new)

str(midwest_new)

summary(midwest_new)

rename(midwest_new, total = poptotal)

rename(midwest_new, asian = popasian)

midwest_new$histo <- midwest_new$asian/midwest_new$total*100

midwest$tot <- midwest$popasian/midwest$poptotal*100
hist(midwest$tot)

midwest_new <- rename(midwest_new, total = poptotal)
midwest_new <- rename(midwest_new, asian = popasian)

View(midwest_new)

midwest_new$asiantot <- midwest_new$asian/midwest_new$total*100
hist(midwest_new$asiantot)


mean(midwest_new$asiantot)

midwest_new$allmean <- ifelse(midwest_new$asiantot > 0.4872462, "large", "small")
hist(midwest_new$allmean)

table(midwest_new$allmean)

qplot(midwest_new$allmean)

midwest_new <- rename(midwest_new, density = popdensity)
View(midwest_new)

midwest_new$asianden <- midwest_new$density / midwest_new$total *100
hist(midwest_new$asianden)

hist(midwest_new$allmean)
