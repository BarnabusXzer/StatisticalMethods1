# Home Work #5  
## Question 5.3  

**Solutions:**  

Part a)  
THE POPULATION OF INTEREST TO THE FIREFIGHTERS IS ALL FACE MASKS USED BY FIREFIRGHTERS.  

Part b)  
THE ANSWER TO THE QUESTION POSED INVOLVES HYPOTHESIS TESTING.   

## Question 5.9

**Solutions:**  

Part a)  
THE ESIMATED MEAN PRISON-FREE-TIME BETWEEN FIRST AND SECOND OFFENSES USING A 95% CONFIDENCE INTERVAL IS (2.61873,2.98127) 

**Code:**  

    sample <- 200
    stdev <- 1.3
    sample_mean <- 2.8
    confidence_interval <- 0.95

    # Part a)
    confidence <- (1-confidence_interval)/2
    t_crit <- qt(p=confidence,df=sample-1)
    lower_bound <- sample_mean+t_crit*(stdev/sqrt(sample))
    upper_bound <- sample_mean-t_crit*(stdev/sqrt(sample))

## Question 5.13

**Solutions:**  

Part a)  
THE SAMPLE SIZE TO ESTIMATE THE MEAN AMOUT NOF BACTERIA PRESENT IS 125  

**Code:**  

    stdev <- 13
    confidence_interval <- 0.99
    half_width <- 3

    # Part a)
    confidence <- (1-confidence_interval)/2
    z <- -1*qnorm(confidence)
    n <- ((z*stdev)/half_width)^2

## Question 5.21

**Solutions:**  

Part a)  
BECAUSE THE CRITICAL VALUE IS GREATER THAN THE TEST STATISTIC VALUE WE CAN CONCLUDE THAT THE NULL HYPOTHESIS IS NOT REJECTED  

**Code:**  

    sample_size <- 90
    confidence <- 0.05
    stdev <- 1.05
    population_mean <- 2
    sample_mean <- 2.17

    # Part a)
    t_test <- (sample_mean-population_mean)/(stdev/sqrt(sample_size))
    t_crit <- -1*qt(p=confidence,df=sample_size-1)

## Question 5.34

**Solutions:**  

Part a)  
BECAUSE THE SAMPLE_MEAN IS NOT GIVEN WE CANNOT SUPPORT OR REJECT THE NULL HYPOTHESIS, HOWEVER IF THE T-TEST-STATISTIC VALUE IS LESS THAN OR EQUAL TO -1.812461 WE CAN REJECT HTE NULL HYPOTHESIS  

Part b)  
BECAUSE THE SAMPLE_MEAN IS NOT GIVEN WE CANNOT SUPPORT OR REJECT THE NULL HYPOTHESIS, HOWEVER IF THE T-TEST-STATISTIC VALUE IS GREATER THAN OR EQUAL TO 2.085963 WE CAN REJECT HTE NULL HYPOTHESIS

**Code:**

    # Part a)
    confidence <- 0.05
    sample <- 11
    t_crit <- qt(p=confidence,df=sample-1)

    # Part b)
    confidence <- 0.025
    sample <- 21
    t_crit <- -1*qt(p=confidence,df=sample-1)

## Question 5.35

**Solutions:**  

Part a)  
BECAUSE THE T-TEST-STATISTIC IS LESS THAN T-CRITICAL WE CANNOT SUPPOR THE NULL HYPOTHYSIS THAT THE MEAN IS GREATER THAN 9

Part b)  
THE SIGNIFICANCE LEVEL OF THE TEST IS 0.05 OR 5%

**Code:**  

    population_mean <- 9
    sample_mean <- 10.1
    stdev <- 3.1
    sample <- 17
    confidence <- 0.05

    # Part a)
    t_stat <- (sample_mean-population_mean)/(stdev/sqrt(sample)) 
    t_crit <- -1*qt(p=confidence,df=sample-1)

## Question 5.41

**Solutions:**  

Part a)  
THE CONFIDENCE INTERVAL FOR A 95% CONFIDENCE LEVEL ON THE MEAN DISSOLVED OXYGEN LEVEL DURING THE 2 MONTH PERIOD IS (4.648574,5.251426)  

Part b)  
USING THE CONFIDENCE INTERVAL FROM PART A, THE LOWER BOUND IS BELOW 5, THEREFORE THE MEAN OXYGEN MANY APPEAER BELOW 5 AT TIMES  

Part c)  
THE LEVEL OF SIGNIFICANCE WHEN THE OXYGEN LEVEL IS 5 IS 0.3766581. BECAUSE THE P-VALUE IS GREATER THATN THE SIGNIFICACE OF 0.05 IT FAILS TO REJECT THE NULL HYPOTHESIS  

**Code:**  

    sample_mean <- 4.95
    stdev <- 0.45
    sample <- 8
    confidence <- 0.05

    # Part a)
    t <- qt(p=confidence,df=sample-1)
    lower_bound <- sample_mean+t*(stdev/sqrt(sample))
    upper_bound <- sample_mean-t*(stdev/sqrt(sample))

    # Part c)
    population_mean <- 5
    t <- (sample_mean-population_mean)/(stdev/sqrt(sample))
    p <- pnorm(t)

## Question 10.4

**Solutions:**  

Part a)  
THE 95% CONFIDENCE INTERVAL FOR P IS (0.5824035, 0.6375965) confidence <- 0.95  

Part b)  
THE 99% CONFIDENCE INTERVAL FOR P IS (0.573732, 0.646268)
confidence <- 0.99  

Part c)  
BECAUSE THE LEVEL OF CONFIDENCE INCREASE THE RANGE OF THE INTERVAL OF CONFIDENCE ALSO INCREASED

**Code:**  

    y <- 732
    n <- 1200

    # Part a)
    p <- y/n
    stdev <- sqrt((p*(1-p))/n)
    z <- qnorm(p=(1-confidence)/2,lower.tail=FALSE)
    lower_bound <- p-z*stdev
    upper_bound <- p+z*stdev
    print(lower_bound)
    print(upper_bound)

    # Part b)
    p <- y/n
    stdev <- sqrt((p*(1-p))/n)
    z <- qnorm(p=(1-confidence)/2,lower.tail=FALSE)
    lower_bound <- p-z*stdev
    upper_bound <- p+z*stdev

## Question 10.5

**Solutions:**  

Part a)  
THERE MUST BE 601 PEOPLE INCLUDED IN THIS POLL TO ESTIMATE THE POPULATION SIZE WITH NO PREVIOUS INFORMATION

Part b)  
THERE MUST BE 505 PEOPLE INCLUDED IN THIS POLL TO ESTIMATE THE POPULATION SIZE WHEN THE POPULATION PROPORTION IS LESS THAN 30%

**Code:**  

    confidence <- 0.95
    stdev <- 0.04

    # Part a)
    z <- qnorm(p=(1-confidence)/2,lower.tail=FALSE)
    n <- (1/4)*(z/stdev)^2

    # Part b)
    p <- 0.3
    z <- qnorm(p=(1-confidence)/2,lower.tail=FALSE)
    n <- (p*(1-p)*z^2)/stdev^2

## Question 10.13

**Solutions:**  

Part a)  
BECAUSE THE Z-TEST VALUE IS NOT LESS THAN THE Z-STAT VALUE, THEREFORETHERE IS NOT SIGNIFICANT EVIDENCE THAT THE SALES MANAGER'S CLAIM IS FALSE. 

Part b)  
THE 95% CONFIDENCE INTERVAL FOR DISSATISFIED CUSTOMERS IS (0.2657855, 0.04993071)

**Code:**  

    y <- 5
    n <- 40
    confidence <- 0.05
    p0 <- 0.1

    # Part a)
    z_test <- qnorm(confidence)
    p1 <- y/n
    z_stat <- (p1-p0)/sqrt((p0*(1-p0))/n)

    # Part b)
    z <- qnorm(p=(confidence)/2,lower.tail=FALSE)
    y_prime <- y+(0.5*z^2)
    n_prime <- n+z^2
    p_prime <- y_prime/n_prime
    lower_bound <- p_prime-z*sqrt((p_prime*(1-p_prime))/n_prime)
    upper_bound <- p_prime+z*sqrt((p_prime*(1-p_prime))/n_prime)