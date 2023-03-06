# QUESTION 4.45

p <- 0.2
n <- 15

probability <- function(y,n,p) {
    return((factorial(n)/(factorial(y)*factorial(n-y)))*(p^y)*((1-p)^(n-y)))
}

# Part a)
# THE PROBABILITY THAT ALL 15 DRIVERS WILL HAVE A BLOOD ALCOHOL LEVEL EXCEEDING THE LEGAL LIMIT IS 3.2768e-9% OR 0%
y <- 15
prob <- probability(y,n,p)
print(prob)

# Part b)
# THE PROBABILITY THAT EXACTLY 6 OF THE 15 DRIVERS WILL HAVE A BLOOD ALCOHOL LEVEL EXCEEDING THE LEGAL LIMIT IS 4.299262%
y <- 6
prob <- probability(y,n,p)
print(prob)

# Part c)
# THE PROBABILITY THAT 6 OR MORE OF THE 15 DRIVERS WILL EXCEED THE LEGAL LIMIT WILL IS 6.105143%
y <- 0:5
prob <- 1-sum(probability(y,n,p))
print(prob)

# Part d)
# THE PROBABILITY THAT ALL 15 DRIVERS WILL HAVE A BLOOD ALCOHOL LEVEL WITHIN THE LEGAL LIMIT IS 3.518437%
y <- 0
prob <- probability(y,n,p)
print(prob)