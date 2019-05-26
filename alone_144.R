library(ggplot2)
library(dplyr)
mpg <- data.frame(ggplot2::mpg)
mpg_n <- mpg

mpg_n <-mpg_n %>% 
  mutate(mpg_d = cty + hwy)

mpg_n <-mpg_n %>% 
  mutate(mpg_h = mpg_d/2)

mpg_n

mpg_n %>% 
  arrange(mpg_d) %>% 
  head(3)
mpg %>%
  mutate(mpg_d = cty + hwy,
         mpg_h = mpg_d /2) %>% 
  arrange(mpg_d) %>% 
  head(3)






