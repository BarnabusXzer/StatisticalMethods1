# QUESTION 6.23

sample_1 <- c(48.3,44.6,49.7,40.5,54.3,55.6,45.8,35.4)
sample_2 <- c(43.5,43.8,53.7,43.9,54.4,54.7,45.2,34.4)
sample_mean_1 <- mean(sample_1)
sample_mean_2 <- mean(sample_2)
standard_deviation_1 <- sd(sample_1)
standard_deviation_2 <- sd(sample_2)
confidence <- 0.95

# Part a)
# THE P-VALUE IS 0.9409147
t <- t.test(sample_1,sample_2,conf.level=confidence,paired=TRUE)
p <- t$p.value