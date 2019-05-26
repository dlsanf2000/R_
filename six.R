library(dplyr)
exam <- read.csv("csv_exam.csv")
exam

exam %>% filter(class ==1)

exam %>% filter(class !==1)

exam %>% filter(class != 1)

exam %>% filter(math >50)

exam %>% filter(math <= 50)

exam %>% filter(class == 10)

exam %>% filter(class ==1 && math >= 50)

exam %>% filter(class == 1& math > 50)

exam %>%filter(math >=90 | english >= 90)

exam %>% filter(math >= 90 || english >= 90)

exam %>%  filter(class ==1 | class == 3| class ==5)

exam %>%  filter(class == 1| class == 3| class == 8 | class == 2)

exam %>% filter(class %in% c(1,3,5))

class1 <- exam %>%  filter(class ==1)
mean(class1$math)

exam %>%  select(english >= 50)

exam %>%  select(english)

exam %>% select(english, -math)

exam %>% select(english, -english)

exam %>%  filter(class ==1) %>% select(english)

exam %>% filter(class ==1 %in% select(english))

exam %>% 
  filter(class == 1) %>% 
  select(english)

exam %>% 
  select(class, math, id) %>% 
  head


exam %>% 
  select(class, math, id) %>% 
  str

exam %>%  arrange(math)

exam %>% arrange(class)

exam %>% arrange(8)

exam %>% arrange(desc(math))

exam %>% arrange(desc(math, class, science))

exam %>% arrange(class, math, science)

exam %>% select(class, math, english)

exam %>% 
  mutate(total = math + english + science) %>% 
  head

exam %>% 
  mutate(total = math +english +science,
         mean = (math +english + science)/3) %>% 
  head


exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head


exam %>% 
  mutate(total = math + english + science) %>% 
  arrange(total) %>% 
  head


exam %>% 
  summarise(mean_math = mean(math))

exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math))


exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math),
            sum_math = sum(math),
            median_math = median(math),
            n = n())


mpg %>% 
  group_by (manufacturer, drv) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  head(10)

mpg %>% 
  group_by(manufacturer) %>% 
  filter(class =="suv") %>% 
  mutate(tot= (cty +hwy) /2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)


mpg %>% 
  group_by(class) %>% 
  select(hwy, cty) %>% 
  mutate(heytot = (cty+hwy)/2) %>% 
  summarise(mean_heytot = mean(heytot)) %>% 
  arrange(mean_heytot) %>% 
  tail(10)


test1 <- data.frame(id = c(1,2,3,4,5),
                    midterm = c(50, 80, 70, 90, 85))

test2 <- data.frame(id = c(1,2,3,4,5),
                    final = c(70, 83, 65, 95, 80))

test1

test2


total <- left_join(test1, test2, by = "id")
total


name <- data.frame(class = c(1,2,3,4,5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))

name

exam_new <- left_join(exam, name, by = "class")
exam_new


group_a <- data.frame(id = c(1,2,3,4,5),
                      test = c(60, 80, 70, 90, 85))

group_b <- data.frame(id = c(6,7,8,9,10),
                      test = c(70, 83, 65, 95, 80))

group_a

group_b


group_all <- bind_rows(group_a, group_b)
group_all
