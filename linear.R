# Question 2
# Assessing whether there is a relationship between IVF success rate and no. of
# embryo transferred of ethnic groups using linear regression

#load library
library(tidyverse)
library(readxl)

# import data from excel
embryo_df <- read_excel("I:/UBD FYP/dataset_ivf.xlsx", sheet = "Q2 data")


embryo_df <- 
  embryo_df %>%
  mutate(
    ethnicity = factor(ethnicity, levels = c("White", "Asian", "Black",
                                             "Mixed", "Other")),
    embryos = factor(embryos, levels = c("0", "1", "2", "3"))
  )
  
view(embryo_df)

mdl <- lm(success ~ ethnicity + embryos, data = embryo_df)
summary(mdl)


