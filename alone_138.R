library(ggplot2)
library(dplyr)

mpg <- data.frame(ggplot2::mpg)
mpg_n <- mpg

mpg_o<-mpg_n %>% 
  select(class, cty)

mpg_s <- mpg_o %>% filter(mpg_o$class == "suv")
mpg_c <- mpg_o %>% filter(mpg_o$class =="compact")

mean(mpg_s$cty)
mean(mpg_c$cty)
