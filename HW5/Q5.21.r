# QUESTION 5.21

sample_size <- 90
confidence <- 0.05
stdev <- 1.05
population_mean <- 2
sample_mean <- 2.17

# Part a)
# BECAUSE THE CRITICAL VALUE IS GREATER THAN THE TEST STATISTIC VALUE WE CAN CONCLUDE THAT THE NULL HYPOTHESIS IS NOT REJECTED 
t_test <- (sample_mean-population_mean)/(stdev/sqrt(sample_size))
t_crit <- -1*qt(p=confidence,df=sample_size-1)

