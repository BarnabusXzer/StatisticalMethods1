# QUESTION 4.79

mean <- 930
stdev <- 130
n <- 20

find_z <- function(y,mean,stdev,n) {
        return((y-mean)/(stdev/sqrt(n)))
}

# Part a)
# THE PROBABILITY THAT THE MEAN SCORE IS BETWEEN 900 AND 960 IS 69.79426%
y1 <- 900
z1 <- find_z(y1,mean,stdev,n)
y2 <- 960
z2 <- find_z(y2,mean,stdev,n)
prob <- pnorm(z2)-pnorm(z1)
print(prob)

# Part b)
# THE PROBABILITY THAT THEIR MEAN SCORE WAS GREATER THAN 960 IS 15.10287%
y <- 960
z <- find_z(y1,mean,stdev,n)
prob <- pnorm(z)
print(prob)

# Part c)
# THE 90th PERCENTILE OF THEIR MEAN SCORE IS 967.2533
z <- qnorm(0.90)
y <- mean+z*(stdev/sqrt(n))
print(y)