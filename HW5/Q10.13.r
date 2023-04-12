# QUESTION 10.13

y <- 5
n <- 40
confidence <- 0.05
p0 <- 0.1

# Part a)
# BECAUSE THE Z-TEST VALUE IS NOT LESS THAN THE Z-STAT VALUE, THEREFORE THERE IS NOT SIGNIFICANT EVIDENCE THAT THE SALES MANAGER'S CLAIM IS FALSE. 
z_test <- qnorm(confidence)
p1 <- y/n
z_stat <- (p1-p0)/sqrt((p0*(1-p0))/n)

# Part b)
# THE 95% CONFIDENCE INTERVAL FOR DISSATISFIED CUSTOMERS IS (0.2657855, 0.04993071)
z <- qnorm(p=(confidence)/2,lower.tail=FALSE)
y_prime <- y+(0.5*z^2)
n_prime <- n+z^2
p_prime <- y_prime/n_prime
lower_bound <- p_prime-z*sqrt((p_prime*(1-p_prime))/n_prime)
upper_bound <- p_prime+z*sqrt((p_prime*(1-p_prime))/n_prime)