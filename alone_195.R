library(ggplot2)
library(dplyr)

ecomomics <- data.frame(ggplot2::economics)
ecomomics_n <- ecomomics

ggplot(data = ecomomics_n, aes(x = date, y = psavert))+geom_line()
