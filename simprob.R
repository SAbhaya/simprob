#load lattice

library(lattice)



#check the sample
coin <- c(0,1)
result <- sample(coin,10, replace = TRUE)
result
histogram(result)

barchart(result)
densityplot(result)
plot(result)
hist(result)
stripplot(result)
barchart(table(result), horizontal = FALSE)
summary(result)
plot(result)
