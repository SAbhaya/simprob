#load lattice

library(lattice)



#check the sample
coin <- c(0,1)
result <- sample(coin,10, replace = TRUE)
#hist(result)
histogram(result)
densityplot(result)