library(ggplot2)
library(dplyr)

mpg <- data.frame(ggplot2::mpg)

mpg_n <- mpg

mpg_a <- mpg_n %>%  filter(mpg_n$manufacturer == "audi")

mpg_r<- mean(mpg_a$hwy)
head(mpg_a, 5)