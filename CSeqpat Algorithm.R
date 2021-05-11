library(CSeqpat)
library(cluster)

reviews_sample1 <- read.csv("C:/Users/Lerata Maloke/DownLoads/reviews_sample.txt", header = F, quote = "")

head(reviews_sample1)

reviews_sample1$V1 <- as.character(reviews_sample1$V1)

tf <- tempfile()

writeLines(reviews_sample1$V1, tf)

CSeqpat(tf, phraselenmin = 1, minsupport = 1, docdelim = "\t", stopword = T, stemword = F, lower = T, removepunc = T)
  