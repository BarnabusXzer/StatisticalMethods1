# QUESTION 4.69

mean <- 36
stdev <- 3

find_z <- function(y,mean,stdev) {
    return((y-mean)/stdev)
}

# Part a)
# THE PROBABILITY THAT THE ELAPSED TIME BETWEEN SUBMISSION AND REIMBURSEMENT WILL EXCEED 30 DAYS IS 97.72499%
y <- 30
z <- find_z(y,mean,stdev)
prob <- 1-pnorm(z)
print(prob)


# Part b)
# IF A TRAVEL VOUCHED SUBMITTED MORE THAN 55 DAYS AGO IT IS SAFE TO CONCLUDE THAT THE PROBABILITY OF REIMBURSEMENT IS 11.99603e-9% OR 0%
y <- 55
z <- find_z(y,mean,stdev)
prob <- 1-pnorm(z)
print(prob)