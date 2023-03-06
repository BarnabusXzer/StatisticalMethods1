# QUESTION 4.53

# Part a)
# THE AREA UNDER THE STANDARD NORMAL CURVE BETWEEN z = 0 and z = 1.3 is 40.31995
a1 <- pnorm(0)
a2 <- pnorm(1.3)
a <- a2-a1
print(a)