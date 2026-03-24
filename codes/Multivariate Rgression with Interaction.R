# Load necessary packages
install.packages("gridExtra")
library(gridExtra)

install.packages("emmeans")
library(emmeans)

# Use your dataset
reg.data <- mtn_clean

# (Optional) Standardize numeric variables
# Identify numeric columns
numeric_vars <- sapply(reg.data, is.numeric)
reg.std <- reg.data
reg.std[, numeric_vars] <- scale(reg.data[, numeric_vars])

# Fit the model with interaction (unstandardized version)
interaction.model <- lm(Total_Revenue ~ Customer_Tenure_in_months *Satisfaction_Rate  + Data_Usage*Satisfaction_Rate, data = reg.data)
summary(interaction.model)

# OR: Fit the model with standardized data
interaction.model.std <- lm(Total_Revenue ~ Customer_Tenure_in_months * Satisfaction_Rate + Data_Usage*Satisfaction_Rate, data = reg.std)
summary(interaction.model.std)
