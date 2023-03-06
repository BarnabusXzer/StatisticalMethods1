# QUESTION 4.65

mean <- 250
stdev <- 50

find_z <- function(y,mean,stdev) {
    return((y-mean)/stdev)
}

# Part a)
# THE PROBABILITY THAT P(y > 250) IS 0%
y <- 250
z <- find_z(y,mean,stdev)
prob <- pnorm(z)
print(prob)

# Part b)
# THE PROBABILITY THAT P(y > 150) IS 97.72499%
y <- 150
z <- find_z(y,mean,stdev)
prob <- 1-pnorm(z)
print(prob)

# Part c)
# THE PROBABILITY THAT P(150 < y < 350) IS 95.44997%
y1 <- 150
z1 <- find_z(y1,mean,stdev)
y2 <- 350
z2 <- find_z(y2,mean,stdev)
prob <- pnorm(z2)-pnorm(z1)
print(prob)

# Part c)
# THE VALUE OF k SUCH THAT P(250 - k < y < 250 + k) = 0.60 IS 42.0766
k <- 0
prob <- 0
while (prob != 0.60) {
    k <- k + 0.0002
    y1 <- 250 - k
    z1 <- find_z(y1,mean,stdev)
    y2 <- 250 + k
    z2 <- find_z(y2,mean,stdev)
    prob <- abs(round(pnorm(z2)-pnorm(z1),digits=4))
}
print(k)
