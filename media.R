library(KoNLP)
library(dplyr)
useNIADic()
media <- read.csv("한국언론진흥재단_2018년_2월_경제_분야_고빈도_사용_명사.csv")
head(media)
media <- rename(media, freq = 빈도수)
media <- rename(media, word = 키워드)
library(wordcloud)
library(RColorBrewer)

pal <- brewer.pal(8, "Dark2")

set.seed(1234)
wordcloud(words = media$word,
          freq = media$freq,
          min.freq = 1,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(2,0.1),
          colors = pal)
warnings()
display.brewer.all()
display.brewer.all(type = "qual")

pal2 <- brewer.pal(9,"Pastel1")
wordcloud(words = media$word,
          freq = media$freq,
          min.freq = 1,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(2,0.1),
          colors = pal2)
pal3 <- brewer.pal(6, "Spectral")
wordcloud(words = media$word,
          freq = media$freq,
          min.freq = 1,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(2,0.1),
          colors = pal3)
pal4 <- brewer.pal(7, "BuPu")
wordcloud(words = media$word,
          freq = media$freq,
          min.freq = 1,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(2,0.1),
          colors = pal4)
