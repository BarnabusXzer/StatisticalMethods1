# QUESTION 6.43

wide_bodied_jet <- c(109.5,107.3,105.0,117.3,105.4,113.7,121.7,109.2,108.1,106.4,104.6,110.5,110.9,111.0,112.4)
narrow_bodied_jet <- c(131.4,126.8,114.1,126.9,108.2,122.0,106.9,116.3,115.5,111.6,124.5,116.2)

# Part a)
# THE P-VALUE IS 0.005562827. THERE FOR THE RESULTS ARE SIGNIFICANT FOR A SIGNIFICANCE > 0.005562827 (5.562827%). USING A 5% SIGNIFICANCE THE DATA REJECTS THE NULL HYPOTHESIS, PROVING THAT THE DIFFERENT PLANES MAKE DIFFERENT NOISES.  
t_test <- t.test(wide_bodied_jet,narrow_bodied_jet)
p <- t_test$p.value
print(t_test)

# Part b)
# THE CONFIDENCE INTERVAL USING A 95% CONFIDENCE IS (-13.599628,-2.733705)
t_test <- t.test(wide_bodied_jet,narrow_bodied_jet,conf.level=0.95)
confidence_interval <- t_test$conf.int