library(ggplot2)
library(dplyr)

mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65,124, 131, 153, 212),"hwy"] <- NA

table(is.na(mpg))

table(is.na(mpg$drv))

table(is.na(mpg$hwy))

mpg %>% 
  filter(!is.na(mpg$hwy)) %>% 
  group_by(drv) %>% 
  summarise(new_mean = mean(hwy))
