# QUESTION 10.20

# Part a)
# THE 95% CONFIDENCE INTERVAL OF PATIENT WHO EXPERIENCED A REDUCTINO IN PAIN USING BIOFEEDBACK AND NSAID IS (0.5292342,0.5907658) AND (0.651088,0.708912) RESPECTIVELY
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