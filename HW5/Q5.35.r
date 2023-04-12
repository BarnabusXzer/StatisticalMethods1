# QUESTION 5.35

population_mean <- 9
sample_mean <- 10.1
stdev <- 3.1
sample <- 17
confidence <- 0.05

# Part a)
# BECAUSE THE T-TEST-STATISTIC IS LESS THAN T-CRITICAL WE CANNOT SUPPOR THE NULL HYPOTHYSIS THAT THE MEAN IS GREATER THAN 9
t_stat <- (sample_mean-population_mean)/(stdev/sqrt(sample)) 
t_crit <- -1*qt(p=confidence,df=sample-1)

# Part b
# THE SIGNIFICANCE LEVEL OF THE TEST IS 0.05 OR 5%