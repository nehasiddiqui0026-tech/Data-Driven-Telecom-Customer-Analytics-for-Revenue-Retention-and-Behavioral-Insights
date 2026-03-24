# Load Packages
install.packages('gridExtra')
library(gridExtra)
install.packages('emmeans')
library(emmeans)

# Model the regression line with Customer_Tenure_in_months
tenure.reg <- lm(Total_Revenue ~ Customer_Tenure_in_months, data = mtn_clean)
summary(tenure.reg)

# Model the regression line with Data_Usage
usage.reg <- lm(Total_Revenue ~ Data_Usage, data = mtn_clean)
summary(usage.reg)

# Model the regression line with both Customer_Tenure_in_months and Data_Usage
all.reg <- lm(Total_Revenue ~ Customer_Tenure_in_months + Data_Usage, data = mtn_clean)
summary(all.reg)

par(mfrow = c(1, 2))  # Set the layout to 1 row, 2 columns

================================================================================

  # Plot the regression line for Customer Tenure vs Total Revenue
  plot(mtn_clean$Customer_Tenure_in_months, mtn_clean$Total_Revenue,
       main = "Total Revenue vs Customer Tenure in Months",
       xlab = "Customer Tenure in Months", ylab = "Total Revenue", 
       col = "blue", pch = 16)

# Add the regression line
abline(lm(Total_Revenue ~ Customer_Tenure_in_months, data = mtn_clean), col = "red")

# Plot the regression line for Data Usage vs Total Revenue
plot(mtn_clean$Data_Usage, mtn_clean$Total_Revenue,
     main = "Total Revenue vs Data Usage",
     xlab = "Data Usage (GB)", ylab = "Total Revenue", 
     col = "green", pch = 16)

# Add the regression line
abline(lm(Total_Revenue ~ Data_Usage, data = mtn_clean), col = "red")



install.packages("ggplot2")
library(ggplot2)

ggplot(mtn_clean, aes(x = Customer_Tenure_in_months, y = Data_Usage, col = Total_Revenue)) +
  geom_point() + 
  geom_smooth(method = lm, se = FALSE, color = "black") +
  labs(x = "Customer Tenure (months)", 
       y = "Data Usage (GB)", 
       col = "Total Revenue") +
  ggtitle("Customer Tenure vs Data Usage based on Total Revenue")


install.packages("ggpmisc")
library(ggpmisc)

library(ggplot2)
library(ggpmisc)  # To extract and display the regression equation

# Create a scatter plot with regression line and formula
ggplot(mtn_clean, aes(x = Customer_Tenure_in_months, y = Data_Usage)) + 
  geom_point(aes(color = Total_Revenue)) + 
  stat_smooth(method = "lm", formula = y ~ x, se = FALSE, color = "blue") +
  stat_poly_eq(aes(label = paste("y = ", ..eq.label.., sep = "")), 
               formula = y ~ x, 
               parse = TRUE) + 
  labs(title = "Customer Tenure vs Data Usage based on Revenue",
       x = "Customer Tenure (Months)",
       y = "Data Usage (GB)") +
  theme_minimal()
===========================================================================
  

#