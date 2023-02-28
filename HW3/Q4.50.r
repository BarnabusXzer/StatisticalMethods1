# Question 4.50

poisson_prob <- function(c, mu) {
    prob <- ((mu^c) * exp(-1 * mu)) / factorial(c)
    return(prob)
    }

# Part a)
# PROBABILITY IS 0.2478752
c <- 0
mu <- 6
prob <- poisson_prob(c, mu) * 100
print(prob)

# Part b)
# PROBABILITY IS 39.36972%
c <- c(0,1,2,3,4,5,6)
mu <- 6
prob <- poisson_prob(c,mu) * 100
prob <- 100 - sum(prob)
print(prob)

# Part c)
# PROBABILITY IS 15.12039%
c <- c(0,1,2,3)
mu <- 6
prob <- poisson_prob(c,mu) * 100
prob <- sum(prob)
print(prob)