# Question 4
# Predict IVF success rates  of patients of different ethnic groups using 
# logistic regression

# load library
library(tidyverse)
library(readxl)

# import data from excel
ivf_df <- read_excel("I:/UBD FYP/ar-2017-2018 ver2.xlsx", sheet = "Q4 data")


ivf_df <-
  ivf_df %>%
  filter(fresh + frozen == 1) %>%
  mutate(
    ethnicity = factor(ethnicity, levels = c("White", "Asian", "Black",
                                             "Mixed", "Other")),
    age = factor(age),
    fof = case_when(
      fresh == 1 ~ "fresh",
      frozen == 1 ~ "frozen"
    )
  )

mod <- glm(success ~ ethnicity, ivf_df, family = binomial)


mod <- glm(success ~ ethnicity + age + no_embryo + fof, ivf_df, family = binomial)
summary(mod)
