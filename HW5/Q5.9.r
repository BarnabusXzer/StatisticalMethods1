# QUESTION #5.9

sample <- 200
stdev <- 1.3
sample_mean <- 2.8
confidence_interval <- 0.95

# Part a)
# THE ESIMATED MEAN PRISON-FREE-TIME BETWEEN FIRST AND SECOND OFFENSES USING A 95% CONFIDENCE INTERVAL IS (2.61873,2.98127)
confidence <- (1-confidence_interval)/2
t_crit <- qt(p=confidence,df=sample-1)
lower_bound <- sample_mean+t_crit*(stdev/sqrt(sample))
upper_bound <- sample_mean-t_crit*(stdev/sqrt(sample))
