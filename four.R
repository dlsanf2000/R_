english <- c(90, 80, 60, 70)
english

math <- c(50, 60, 100, 20)
math


df_midterm <- data.frame(english,math)
df_midterm


class <- c(1,1,2,2)
class

df_midterm <- data.frame(english, math, class)
df_midterm


mean(df_midterm$english)


mean


mean(df_midterm$math)


mean(df_midterm.math)

df_midterm <- data.frame( english = c(90, 80, 60, 70),
                          math = c(50, 60, 100, 20),
                          class = c(1,1,2,2))

df_midterm


mean(english)
mean

install.packages("readxl")
library(readxl)

df_exam <- read_excel("excel_exam.xlsx")
df_exam

newdf_exam <- df_exam
mean(newdf_exam$english)

mean(df_exam$english)

df_exam_novar <- read_excel("excel_exam_novar.xlsx")
df_exam_novar

df_exam_novar <- read_excel("excel_exam_novar_xlsx", col_names = F)

df_exv_exam <- read.csv("csv_exam.csv")
df_exv_exam

df_midterm

write.csv(df_midterm, file = "df_midterm.csv")


save(df_midter, file="df_midterm.rda")

save(df_midterm, file = "df_midter.rda")

df_midterm


load("df_midterm.rda")

rm(df_midterm)

df_midterm

load("df_midter.rda")

df_midterm
