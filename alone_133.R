library(ggplot2)

library(dplyr)

mpg_n <- data.frame(ggplot2::mpg)

mpg_n
a_mpg<-mpg_n %>% filter(displ >=5)
b_mpg<- mpg_n %>% filter(displ <=4)

mean(a_mpg$hwy)

mean(b_mpg$hwy)


audi <- mpg_n %>% 
  filter(manufacturer == "audi")

toyota <- mpg_n %>% 
  filter(manufacturer == "toyota")

mean(audi$cty)

mean(toyota$cty)


