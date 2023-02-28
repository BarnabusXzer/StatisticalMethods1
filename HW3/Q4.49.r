# Question 4.49

poisson_prob <- function(y, mu) {
    prob <- ((mu^y) * exp(-1 * mu)) / factorial(y)
    return(prob)
    }
    
# Part a)
# PROBABILITY IS 9.022352%
y <- 4
mu <- 2
prob <- poisson_prob(y,mu) * 100
print(prob)

# Part b)
# PROBABILITY IS 18.88123%
y <- 4
mu <- 3.5
prob <- poisson_prob(y,mu) * 100
print(prob)

# Part c)
# PROBABILITY IS 5.265302%
y <- c(0,1,2,3,4)
mu <- 2 
prob <- poisson_prob(y,mu) * 100
prob <- 100 - sum(prob)
print(prob)

# Part d)
# PROBABILITY IS 72.17882%
y <- c(1,2,3)
mu <- 2
prob <- poisson_prob(y,mu) * 100
prob <- sum(prob)
print(prob)