library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)

mpg
n_mpg <- mpg

n_mpg

library(dplyr)
n_mpg <- rename(n_mpg, city = cty)

n_mpg

n_mpg <-rename(n_mpg, highway = hwy)

n_mpg

head(n_mpg)
