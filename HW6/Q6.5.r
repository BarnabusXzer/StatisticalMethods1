# QUESTION 6.5

sample_1 <- c(152,157,179,182,176,149)
sample_2 <- c(384,369,354,375,366,423)
sample_size_1 <- 6
sample_size_2 <- 6
sample_mean_1 <- mean(sample_1)
sample_mean_2 <- mean(sample_2)
standard_deviation_1 <- sd(sample_1)
standard_deviation_2 <- sd(sample_2)
significance <- 0.05
pooled_variance <- ((sample_size_1-1)*(standard_deviation_1^2)+(sample_size_2-1)*(standard_deviation_2^2))/(sample_size_1+sample_size_2-2)

# Part a)
# THE T-VALUE IS -18.509 AND THE P_VALUE IS 4.696e-08. BECAUSE 4.696e-08 < 0.05 THE NULL HYPOTHESIS CAN BE REJECTED. THUS THE DATA POVIDED IS SUFFICENT EVIDENCE.
df <- sample_size_1 + sample_size_2 - 2
t <- t.test(sample_1,sample_2,conf.level=1-significance)
p <- t$p.value

# Part c)
# THE 95% CONFIDENCE INTERVAL IS (-238.9846,-186.3487)
confidence_interval <- t$conf.int