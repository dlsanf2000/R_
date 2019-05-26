library(ggplot2)
library(dplyr)

mpg <- data.frame(ggplot2::mpg)
mpg_n <- mpg

mpg_s <- mpg_n %>% 
  filter(class %in% c("compact", "subcompact", "suv"))

ggplot(data = mpg_s, aes(x = class, y = cty))+geom_boxplot()
