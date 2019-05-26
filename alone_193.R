library(ggplot2)
library(dplyr)
mpg <- data.frame(ggplot2::mpg)

mpg_n <- mpg

mpg_a<-mpg_n %>% 
  filter(class == "suv") %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)

ggplot(data = mpg_a, aes(x = reorder(manufacturer, -mean_cty), y = mean_cty)) + geom_col()

ggplot(data = mpg_n, aes(x = class)) +geom_bar()
       