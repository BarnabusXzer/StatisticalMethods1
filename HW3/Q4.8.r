# Question 4.8

one_faulty_light <- 0.15
two_faulty_lights <- 0.10
three_faulty_lights <- 0.05

# Part a)
# THE PROBABILITY OF A RANDOMLY SELECTED CAR HAVING NO FAULTY LIGHTS IS 70%
no_faulty_lights <- (1 - one_faulty_light - two_faulty_lights - three_faulty_lights) * 10
print(no_faulty_lights)

# Part b)
# THE PROBABILITY OF A RANDOMLY SELECTED CAR HAVING AT MOST ONE FAULTY LIGHT IS 85%
maximum_one_faulty_light <- (1 - one_faulty_light) * 100 
print(maximum_one_faulty_light)

# Part c)
# THE PROBABILITY OF A RANDOMLY SELECTED CAR HAVING AT LEAST ONE FAULTY LIGHT IS 30%
minimum_one_faulty_light <- (one_faulty_light + two_faulty_lights + three_faulty_lights) * 100
print(minimum_one_faulty_light)

