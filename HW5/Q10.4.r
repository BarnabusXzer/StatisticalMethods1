# QUESTION 10.4

y <- 732
n <- 1200

# Part a)
# THE 95% CONFIDENCE INTERVAL FOR P IS (0.5824035, 0.6375965)
confidence <- 0.95
p <- y/n
stdev <- sqrt((p*(1-p))/n)
z <- qnorm(p=(1-confidence)/2,lower.tail=FALSE)
lower_bound <- p-z*stdev
upper_bound <- p+z*stdev
print(lower_bound)
print(upper_bound)

# Part b)
# THE 99% CONFIDENCE INTERVAL FOR P IS (0.573732, 0.646268)
confidence <- 0.99
p <- y/n
stdev <- sqrt((p*(1-p))/n)
z <- qnorm(p=(1-confidence)/2,lower.tail=FALSE)
lower_bound <- p-z*stdev
upper_bound <- p+z*stdev

# Part c)
# BECAUSE THE LEVEL OF CONFIDENCE INCREASE THE RANGE OF THE INTERVAL OF CONFIDENCE ALSO INCREASED