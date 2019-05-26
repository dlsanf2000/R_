library(ggplot2)
library(dplyr)

mpg <- as.data.frame(ggplot2::mpg)
mpg[c(10, 14, 58, 93), "drv"] <- "k"
mpg[c(29, 43, 129, 203), "cty"] <- c(3,4,39,42)

table(mpg$drv)

mpg$drv <- ifelse(mpg$drv %in% c("4", "f", "r"), mpg$drv, NA)

table(mpg$drv)

boxplot(mpg$cty)$stats

mean(c(9, 14, 17, 19, 26))
mpg$cty <- ifelse(mpg$cty <9 | mpg$cty >26, NA, mpg$cty)
mpg$cty
mpg

mpg %>% 
  filter(!is.na(drv)& !is.na(cty)) %>% 
  group_by(drv) %>% 
  summarise(mean_c = mean(cty))
