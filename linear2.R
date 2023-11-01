# Question 3
# Evaluate the effect of previous number of IVF cycles on IVF success rates in
# different ethnic groups using linear regression

# load library
library(tidyverse)
library(readxl)

#import data from excel
prev_ivf_df <- read_excel("I:/UBD FYP/dataset_ivf.xlsx", sheet = "Q3 data")


prev_ivf_df <- 
  prev_ivf_df %>%
  mutate(
    ethnicity = factor(ethnicity, levels = c("White", "Asian", "Black",
                                             "Mixed", "Other")),
    no_prev_ivf = factor(no_prev_ivf, levels = c("0", "1", "2", "3", "4", "5", ">5"))
  )

view(prev_ivf_df)

mdl2 <- lm(success ~ ethnicity + no_prev_ivf, data = prev_ivf_df)
summary(mdl2)
