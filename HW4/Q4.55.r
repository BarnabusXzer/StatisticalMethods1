# QUESTION 4.55

# Part a)
# THE AREA UNDER THE STANDARD NORMAL CURVE BETWEEN z = -2.5 and z = -1.2 is 10.886
a1 <- pnorm(-2.5)
a2 <- pnorm(-1.2)
a <- a2-a1
print(a)