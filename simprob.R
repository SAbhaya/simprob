#load lattice

library(lattice)
library(dplyr)
library(tidyr)
library(ggplot2)

#check the sample
coin <- c(0,1)
result <- sample(coin,10, replace = TRUE)
result
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
