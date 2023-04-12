# Home Work #6  
## Question 6.3  

**Solutions:**  

Part a)  
ASSUMING SIGMA-1 AND SIGMA-2 ARE EQUAL, THE P-VALUE IS 0.01

**Code:**

    sample_size_1 <- 13
    sample_size_2 <- 21
    sample_mean_1 <- 50.3
    sample_mean_2 <- 58.6
    # ASSUME STANDARD_DEVIATION_1 == STANDARD_DEVIATION_2
    standard_deviation <- mean(7.23,6.98)

    # Part a)
    significance <- 0.01
    df <- sample_size_1+sample_size_2-2
    t <- qt(significance,df=df,lower.tail=TRUE)
    p <- pt(q=t,df=df,lower.tail=TRUE)

## Question 6.5

**Solutions:**  

Part a)  
THE T-VALUE IS -18.509 AND THE P_VALUE IS 4.696e-08. BECAUSE 4.696e-08 < 0.05 THE NULL HYPOTHESIS CAN BE REJECTED. THUS THE DATA POVIDED IS SUFFICENT EVIDENCE.

Part c)  
THE 95% CONFIDENCE INTERVAL IS (-238.9846,-186.3487)

**Code:** 

    sample_1 <- c(152,157,179,182,176,149)
    sample_2 <- c(384,369,354,375,366,423)
    sample_size_1 <- 6
    sample_size_2 <- 6
    sample_mean_1 <- mean(sample_1)
    sample_mean_2 <- mean(sample_2)
    standard_deviation_1 <- sd(sample_1)
    standard_deviation_2 <- sd(sample_2)
    significance <- 0.05
    pooled_variance <- ((sample_size_1-1)*(standard_deviation_1^2)+(sample_size_2-1)*(standard_deviation_2^2))/(sample_size_1+sample_size_2-2)

    # Part a)
    df <- sample_size_1 + sample_size_2 - 2
    t <- t.test(sample_1,sample_2,conf.level=1-significance)
    p <- t$p.value

    # Part c)
    confidence_interval <- t$conf.int

## Question 6.23

**Solutions:**  

Part a)  
THE P-VALUE IS 0.9409147

**Code:** 

    sample_1 <- c(48.3,44.6,49.7,40.5,54.3,55.6,45.8,35.4)
    sample_2 <- c(43.5,43.8,53.7,43.9,54.4,54.7,45.2,34.4)
    sample_mean_1 <- mean(sample_1)
    sample_mean_2 <- mean(sample_2)
    standard_deviation_1 <- sd(sample_1)
    standard_deviation_2 <- sd(sample_2)
    confidence <- 0.95

    # Part a)
    t <- t.test(sample_1,sample_2,conf.level=confidence,paired=TRUE)
    p <- t$p.value

## Question 6.43

**Solutions:**  

Part a)  
THE P-VALUE IS 0.005562827. THERE FOR THE RESULTS ARE SIGNIFICANT FOR A SIGNIFICANCE > 0.005562827 (5.562827%). USING A 5% SIGNIFICANCE THE DATA REJECTS THE NULL HYPOTHESIS, PROVING THAT THE DIFFERENT PLANES MAKE DIFFERENT NOISES.  

Part b)  
THE CONFIDENCE INTERVAL USING A 95% CONFIDENCE IS (-13.599628,-2.733705)

**Code:** 

    wide_bodied_jet <- c(109.5,107.3,105.0,117.3,105.4,113.7,121.7,109.2,108.1,106.4,104.6,110.5,110.9,111.0,112.4)
    narrow_bodied_jet <- c(131.4,126.8,114.1,126.9,108.2,122.0,106.9,116.3,115.5,111.6,124.5,116.2)

    # Part a)
    t_test <- t.test(wide_bodied_jet,narrow_bodied_jet)
    p <- t_test$p.value
    print(t_test)

    # Part b)
    t_test <- t.test(wide_bodied_jet,narrow_bodied_jet,conf.level=0.95)
    confidence_interval <- t_test$conf.int

## Question 10.20

**Solutions:** 
 
Part a)  
THE 95% CONFIDENCE INTERVAL OF PATIENT WHO EXPERIENCED A REDUCTINO IN PAIN USING BIOFEEDBACK AND NSAID IS (0.5292342,0.5907658) AND (0.651088,0.708912) RESPECTIVELY  

**Code:** 

    # Part a)
    pi_1 <- 560/1000
    sigma_1 <- sqrt(0.56*0.44/1000)
    z <- qnorm(p=(1-confidence)/2,lower.tail=FALSE)
    upper_bound <- pi_1+(z*sigma_1)
    lower_bound <- pi_1-(z*sigma_1)

    pi_2 <- 680/1000  
    sigma_2 <- sqrt(0.68*0.32/1000)
    z <- qnorm(p=(1-confidence)/2,lower.tail=FALSE)
    upper_bound <- pi_2+(z*sigma_2)
    lower_bound <- pi_2-(z*sigma_2)