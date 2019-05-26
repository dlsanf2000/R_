library(ggplot2)
library(dplyr)

mpg <- data.frame(ggplot2::mpg)
mpg_n <- mpg

mpg_a<- mpg_n %>% filter(mpg$displ <=4)
mpg_b <- mpg_n %>% filter(mpg$displ >5)

mean(mpg_a$hwy)
mean(mpg_b$hwy)

mpg_a <- mpg_n %>% filter(manufacturer == "audi")
mpg_b <- mpg_n %>% filter(manufacturer == "toyota")

mean(mpg_a$cty)
mean(mpg_b$cty)

mpg_a <- mpg_n %>% filter(manufacturer == "chevoerlet")
mpg_b <- mpg_n %>% filter(manufacturer == "ford")
mpg_c <- mpg_n %>% filter(manufacturer == "honda")

mpg_e <- mpg_n %>% filter(mpg_n$manufacturer %in% c("chevrolet", "ford", "honda"))
mean(mpg_e$hwy)
