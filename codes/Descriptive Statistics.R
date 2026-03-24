# Load the package
library(readr)
library(dplyr)
library(tidyr)
library(corrplot)
library(ggplot2)
library(tidyverse)

View(mtn)
summary(mtn)
str(mtn)

mtn_clean <- mtn  



names(mtn_clean) <- gsub(" ", "_", names(mtn_clean))

#Factorize the categorical variables
mtn_clean$Gender <- factor(mtn_clean$Gender)
mtn_clean$State <-factor(mtn_clean$State)
mtn_clean$MTN_Device <- factor(mtn_clean$MTN_Device)
mtn_clean$Customer_Review <- factor(mtn_clean$Customer_Review)
mtn_clean$Subscription_Plan <-factor(mtn_clean$Subscription_Plan)
mtn_clean$Customer_Churn_Status <-factor(mtn_clean$Customer_Churn_Status)

summary(mtn_clean)
str(mtn_clean)

install.packages("psych")
library(psych)

describe(mtn_clean)

# Frequency Tables for Catergorical variables
categorical_vars <- names(mtn_clean)[sapply(mtn_clean, is.factor)]

# Print frequency table
for (var in categorical_vars) {
  cat("\n📊 Frequency table for:", var, "\n")
  print(table(mtn_clean[[var]]))
}




