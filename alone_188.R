library(ggplot2)
library(dplyr)

mpg <- data.frame(ggplot2::mpg)
mpg_n <- mpg

ggplot(data = mpg_n, aes(x = cty, y = hwy))+geom_point()

midwest <- data.frame(ggplot2::midwest)

midwest_n <- midwest

ggplot(data = midwest_n, aes(x = poptotal, y = popasian))+geom_point()+xlim(0, 500000)+ylim(0, 10000)
