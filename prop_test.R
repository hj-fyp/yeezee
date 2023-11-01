# Question 1
# Calculating overall IVF success rate of ethnic groups using prop test

# load library
library(tidyverse)
library(readxl)


prop.test(x = c(26680, 3664, 689, 553, 6332), n = c(97970, 16212, 3732, 2165, 25126))

# Ho: Success rate of each ethnicity are equal
# H1: Not all ethnicities' success rate are equal

# Since p-value < 2.2e-16 < 0.05, null hypothesis is rejected. Therefore, there 
# is a significant evidence at the 5% level that the success rate of ethnic group
# are NOT EQUAL