# QUESTION 5.13

stdev <- 13
confidence_interval <- 0.99
half_width <- 3

# Part a)
# THE SAMPLE SIZE TO ESTIMATE THE MEAN AMOUT NOF BACTERIA PRESENT IS 125
confidence <- (1-confidence_interval)/2
z <- -1*qnorm(confidence)
n <- ((z*stdev)/half_width)^2