# Home Work #3
## Question 4.45

**Solutions:**  

Part a)  
THE PROBABILITY THAT ALL 15 DRIVERS WILL HAVE A BLOOD ALCOHOL LEVEL EXCEEDING THE LEGAL LIMIT IS 3.2768e-9% OR 0%

Part b)  
THE PROBABILITY THAT EXACTLY 6 OF THE 15 DRIVERS WILL HAVE A BLOOD ALCOHOL LEVEL EXCEEDING THE LEGAL LIMIT IS 4.299262%  

Part c)  
THE PROBABILITY THAT 6 OR MORE OF THE 15 DRIVERS WILL EXCEED THE LEGAL LIMIT WILL IS 6.105143%  

Part d)  
THE PROBABILITY THAT ALL 15 DRIVERS WILL HAVE A BLOOD ALCOHOL LEVEL WITHIN THE LEGAL LIMIT IS 3.518437%  

**Code:**  

    p <- 0.2
    n <- 15

    probability <- function(y,n,p) {
        return((factorial(n)/(factorial(y)*factorial(n-y)))*(p^y)*((1-p)^(n-y)))
    }

    # Part a)
    y <- 15
    prob <- probability(y,n,p)
    print(prob)

    # Part b)
    y <- 6
    prob <- probability(y,n,p)
    print(prob)

    # Part c)
    y <- 0:5
    prob <- 1-sum(probability(y,n,p))
    print(prob)

    # Part d)
    y <- 0
    prob <- probability(y,n,p)
    print(prob)

## Question 4.53

**Solutions:**  

Part a)  
THE AREA UNDER THE STANDARD NORMAL CURVE BETWEEN z = 0 and z = 1.3 is 40.31995


**Code:** 

    # Part a)
    a1 <- pnorm(0)
    a2 <- pnorm(1.3)
    a <- a2-a1
    print(a)

## Question 4.55

**Solutions:**  

Part a)  
THE AREA UNDER THE STANDARD NORMAL CURVE BETWEEN z = -2.5 and z = -1.2 is 10.886

**Code:** 

    # Part a)
    a1 <- pnorm(-2.5)
    a2 <- pnorm(-1.2)
    a <- a2-a1
    print(a)

## Question 4.57

**Solutions:**  

Part a)  
THE PROBABILITY THAT THE STANDARD NORMAL DISTRIBUTION IS LESS THAN 1.23 IS 89.06514%

**Code:**

    # Part a)
    a <- pnorm(1.23)
    print(a)

## Question 4.59

**Solutions:**  

Part a)  
THE VALUE OF z WHEN THE PROBABILITY IS 50% IS 0 

**Code:**

    # Part a)
    z <- qnorm(0.5)
    print(z)

## Question 4.61

**Solutions:**  

Part a)  
THE VALUE OF z WHEN THE PROBABILITY IS 0.91 IS 2.361524

**Code:**

    # Part a)
    z <- -1*qnorm(0.0091)
    print(z)

## Question 4.65

**Solutions:**  

Part a)  
THE PROBABILITY THAT P(y > 250) IS 0%  

Part b)  
THE PROBABILITY THAT P(y > 150) IS 97.72499%  

Part c)  
THE PROBABILITY THAT P(150 < y < 350) IS 95.44997%

Part d)  
THE VALUE OF k SUCH THAT P(250 - k < y < 250 + k) = 0.60 IS 42.0766

**Code:**

    mean <- 250
    stdev <- 50

    find_z <- function(y,mean,stdev) {
        return((y-mean)/stdev)
    }

    # Part a)
    y <- 250
    z <- find_z(y,mean,stdev)
    prob <- pnorm(z)
    print(prob)

    # Part b)
    y <- 150
    z <- find_z(y,mean,stdev)
    prob <- 1-pnorm(z)
    print(prob)

    # Part c)
    y1 <- 150
    z1 <- find_z(y1,mean,stdev)
    y2 <- 350
    z2 <- find_z(y2,mean,stdev)
    prob <- pnorm(z2)-pnorm(z1)
    print(prob)

    # Part c)
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
