# Home Work #3
## Question 4.8

**Solutions:**  

Part a)  
THE PROBABILITY OF A RANDOMLY SELECTED CAR HAVING NO FAULTY LIGHTS IS 70%   

Part b)  
THE PROBABILITY OF A RANDOMLY SELECTED CAR HAVING AT MOST ONE FAULTY LIGHTIS 85%  

Part c)  
THE PROBABILITY OF A RANDOMLY SELECTED CAR HAVING AT LEAST ONE FAULTY LIGHT IS 30%  

**Code:**  

    one_faulty_light <- 0.15
    two_faulty_lights <- 0.10
    three_faulty_lights <- 0.05

    # Part a)
    no_faulty_lights <- (1 - one_faulty_light - two_faulty_lights - three_faulty_lights) * 100
    print(no_faulty_lights)

    # Part b)
    maximum_one_faulty_light <- (1 - one_faulty_light) * 100 
    print(maximum_one_faulty_light)

    # Part c)
    minimum_one_faulty_light <- (one_faulty_light + two_faulty_lights + three_faulty_lights) * 100
    print(minimum_one_faulty_light)

## Question 4.17

**Solutions:**  

Part a)  
THE PROBABILITY OF A RANDOMLY SELECTED M&M IS BROWN IS 15%  

Part b)  
THE PROBABILITY OF A RANDOMLY SELECTED M&M IS RED OR GREEN IS 25%  

Part c)  
THE PROBABILITY OF A RANDOMLY SELECTED M&M IS BOTH RED AND BROWN IN 0%. A SINGLE SAMPLE IN THIS STUDY CANNOT BE TWO COLORS 

**Code:**  

    yellow <- 0.15
    red <- 0.10
    orange <- 0.20
    blue <- 0.25
    green <- 0.15
    brown <- 0.15

    # Part a)
    chance_brown <- brown * 100
    print(chance_brown)

    # Part b)
    chance_brown_green <- (brown + green) * 100
    print(chance_brown_green)

    # Part c)
    chance_not_blue <- (1 - blue) * 100
    print(chance_not_blue)

## Question 4.21

**Solutions:**  

Part b)  
THE PROBABLITY OF OCCURANCE THAT A DONOR WILL BE WHITE WITH TYPE-O BLOOD IS 44.88778%  

Part c)  
THE PROBABILITY A DONOR WILL HAVE TYPE-O BLOOD IS 46.2%. BECAUSE THE PROBABILITY OF THESE TWO EVENTS ARE DIFFERENT THEY ARE NOT INDEPENDANT  

Part d)  
THE EVENT OF A DONOR BEING WHITE AND HAVING TYPE-O BLOOD ARE NOT MUTUALLY EXLUSIVE  

**Code:**  

    # Part b)
    prob_white_typeO <- (0.36 / (0.36 + 0.322 + 0.088 + 0.032)) * 100
    print(prob_white_typeO)

    # Part c)
    prob_typeO <- (0.36 + 0.07 + 0.017 + 0.015) * 100
    print(prob_typeO)

## Question 4.23

**Solutions:** 

Part a)  
THE PROBABILITY A RANDOMLY SELECTED GOVERNMENT EMPLOYEE WITH AN ADVANCED COLLEGE DEGREE ACCEPTS A PROMOTION IS 74.3%  

Part b)  
THE PROBABILITY A RANDOMLY SELECTED GOVERNMENT EMPLOYEE WITH AN ADVANCED COLLEGE DEGREE DOES NOT ACCEPT A PROMOTION IS 25.7%  

Part c)  
THE PROBABILITY THAT A RANDOMLY SELECTED GOVERNMENT EMPLOYEE HAVING AN ADVANCED COLLEGE DEGREE HAS A SPOUSE WITH A PROFESSIONAL POSITION IS 46%  

**Code:**  

    # Part a)
    prob_accept <- (743 / 1000) * 100
    print(prob_accept)

    # Part b)
    prob_reject <- (257 / 1000) * 100
    print(prob_reject)

    # Part c)
    prob_professional_spouse <- (460 / 1000) * 100
    print(prob_professional_spouse)

## Question 4.41

**Solutions:** 

Part a)  
THE PROBABLITY A CUSTOMER WILL RECALL THE CENTER MORE THAN THREE TIMES IS 10.2%  

Part b)  
THE PROBABLITY A CUSTOMER WILL RECALL THE CENTER AT LEAST TWO TIME BUT LESS THAN FIVE TIMES IS 58.2%  
 
Part c)  
THE PROBABLITY A CUSTOMER WILL RECALL THE CENTER MORE THAN FOUR TIMES IS 3.5%  

**Code:**  

    # Part a)
    prob_three_more <- (0.067 + 0.021 + 0.014) * 100
    print(prob_three_more)

    # Part b)
    prob_two_through_four <- (0.354 + 0.161 + 0.067) * 100
    print(prob_two_through_four)

    # Part c)
    prob_four_more <- (0.021 + 0.014) * 100
    print(prob_four_more)

## Question 4.49

**Solutions:** 

Part a)  
PROBABILITY IS 9.022352%  

Part b)  
PROBABILITY IS 18.88123%  
 
Part c)  
PROBABILITY IS 5.265302%  

Part d)
PROBABILITY IS 72.17882%  

**Code:**  

    poisson_prob <- function(y, mu) {
        prob <- ((mu^y) * exp(-1 * mu)) / factorial(y)
        return(prob)
        }
        
    # Part a)
    y <- 4
    mu <- 2
    prob <- poisson_prob(y,mu) * 100
    print(prob)

    # Part b)
    y <- 4
    mu <- 3.5
    prob <- poisson_prob(y,mu) * 100
    print(prob)

    # Part c)
    y <- c(0,1,2,3,4)
    mu <- 2 
    prob <- poisson_prob(y,mu) * 100
    prob <- 100 - sum(prob)
    print(prob)

    # Part d)
    y <- c(1,2,3)
    mu <- 2
    prob <- poisson_prob(y,mu) * 100
    prob <- sum(prob)
    print(prob)

## Question 4.50

**Solutions:** 

Part a)  
PROBABILITY IS 0.2478752  
 
Part b)  
PROBABILITY IS 39.36972%  
 
Part c)  
PROBABILITY IS 15.12039%  

**Code:**  


    poisson_prob <- function(c, mu) {
        prob <- ((mu^c) * exp(-1 * mu)) / factorial(c)
        return(prob)
        }

    # Part a)
    c <- 0
    mu <- 6
    prob <- poisson_prob(c, mu) * 100
    print(prob)

    # Part b)
    c <- c(0,1,2,3,4,5,6)
    mu <- 6
    prob <- poisson_prob(c,mu) * 100
    prob <- 100 - sum(prob)
    print(prob)

    # Part c)
    c <- c(0,1,2,3)
    mu <- 6
    prob <- poisson_prob(c,mu) * 100
    prob <- sum(prob)
    print(prob)