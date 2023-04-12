# QUESTION 5.41

sample_mean <- 4.95
stdev <- 0.45
sample <- 8
confidence <- 0.05

# Part a)
# THE CONFIDENCE INTERVAL FOR A 95% CONFIDENCE LEVEL ON THE MEAN DISSOLVED OXYGEN LEVEL DURING THE 2 MONTH PERIOD IS (4.648574,5.251426)
t <- qt(p=confidence,df=sample-1)
lower_bound <- sample_mean+t*(stdev/sqrt(sample))
upper_bound <- sample_mean-t*(stdev/sqrt(sample))

# Part b)
# USING THE CONFIDENCE INTERVAL FROM PART A, THE LOWER BOUND IS BELOW 5, THEREFORE THE MEAN OXYGEN MANY APPEAER BELOW 5 AT TIMES

# Part c)
# THE LEVEL OF SIGNIFICANCE WHEN THE OXYGEN LEVEL IS 5 IS 0.3766581. BECAUSE THE P-VALUE IS GREATER THATN THE SIGNIFICACE OF 0.05 IT FAILS TO REJECT THE NULL HYPOTHESIS
population_mean <- 5
t <- (sample_mean-population_mean)/(stdev/sqrt(sample))
p <- pnorm(t)