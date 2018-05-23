#load lattice

library(lattice)
library(dplyr)
library(tidyr)
library(ggplot2)
library(gridExtra)

#check the sample
coin <- c("H","T")
result <- sample(coin,10, replace = TRUE)
#df <- data.frame(result)
df_total <- data.frame(result) %>% count(result)
ggplot(df_total, aes(result,n, fill = result)) + geom_bar(stat = "identity")
df_prob <- spread(df_total,result,n) %>% 
  mutate(prob_H = H/(H+T) , prob_T = T/(H+T) ) %>% 
  select(prob_H, prob_T) %>% gather(event,prob,prob_H:prob_T)

ggplot(df_prob, aes(event,prob, fill = event)) + geom_bar(stat = "identity")


#######################new code above

#names(df) <- c('T', 'H')
df <- spread(count(df,result),result,n)
names(df) <- c('T', 'H')
df <- mutate(df, percT = T/(T+H), percH = H/(T+H))
barplot(c(df$percT, df$percH))
barchart(c(df$percT, df$percH), horizontal = FALSE)

names(df) <- c('T', 'H')
histogram(result)

dfresult <- data.frame(result)
recount <- count(dfresult,result)
byresult <- spread(recount,result,n)
names(byresult) = c("TAIL", "HEAD")
mutate(byresult, pretail = TAIL/(TAIL+ HEAD))

barchart(result)
densityplot(result)
plot(result)
hist(result)
stripplot(result)
barchart(table(result), horizontal = FALSE)
summary(result)
plot(result)
