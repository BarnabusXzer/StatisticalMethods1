# QUESTION 6.3

sample_size_1 <- 13
sample_size_2 <- 21
sample_mean_1 <- 50.3
sample_mean_2 <- 58.6
# ASSUME STANDARD_DEVIATION_1 == STANDARD_DEVIATION_2
standard_deviation <- mean(7.23,6.98)

# Part a)
# ASSUMING SIGMA-1 AND SIGMA-2 ARE EQUAL, THE P-VALUE IS 0.01
significance <- 0.01
df <- sample_size_1+sample_size_2-2
t <- qt(significance,df=df,lower.tail=TRUE)
p <- pt(q=t,df=df,lower.tail=TRUE)