# Clear environment
rm(list = ls())

# Install and load necessary package
install.packages("C50")
library(C50)
# Install and load dplyr
install.packages("dplyr")
library(dplyr)

# Convert categorical variables to factor
categorical_vars <- c("Customer_Churn_Status", "Subscription_Plan", 
                      "Customer_Review", "Gender", "MTN_Device")
mtn_clean[categorical_vars] <- lapply(mtn_clean[categorical_vars], as.factor)

# Optionally: create a simplified version of the dataset for modeling
# Select predictors and outcome
model_data <- mtn_clean[, c("Customer_Churn_Status", "Data_Usage", 
                            "Customer_Tenure_in_months", "Subscription_Plan", 
                            "Customer_Review")]

# Fit the C5.0 model
c50_model <- C5.0(Customer_Churn_Status ~ ., data = model_data)

# View the summary and rules
display(c50_model)
summary(c50_model)

