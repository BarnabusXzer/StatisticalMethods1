# QUESTION 4.83

mean <- 2.1
stdev <- 0.3

find_z <- function(y,mean,stdev) {
    return((y-mean)/stdev)
}

# Part a)
# IF A VALUE OF y = 2.7 CANNOT BE EXCEEDED 2.275013% OF POLUTERS WILL BE IN VIOLATION
y <- 2.7
z <- find_z(y,mean,stdev)
prob <- pnorm(z)
print(1-prob)

# Part b)
# THE y VALUE THAT 25% OF POLLUTERS EXCEED IS 2.302347
z <- qnorm(0.75)
y <- mean+(z*stdev)
print(y)

# Part c)
# THE MEAN LEVEL OF A COMPANY SO THAT ONLY 5% OF POLLUTERS EXCEED y = 2.7 IS 2.206544
z <- qnorm(1-0.05)
y <- 2.7
mean <- y-(z*stdev)
print(mean)

