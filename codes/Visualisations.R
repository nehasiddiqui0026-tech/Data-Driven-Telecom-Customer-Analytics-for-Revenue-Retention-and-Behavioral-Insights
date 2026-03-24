library(ggplot2)

#Create Boxplots for Numeric Variables

# Age
boxplot(mtn_clean$Age, 
        xlab = "Age of Customers", 
        main = "Boxplot for Age", 
        horizontal = TRUE)

# Satisfaction Rate
boxplot(mtn_clean$Satisfaction_Rate, 
        xlab = "Satisfaction Rate", 
        main = "Boxplot for Satisfaction Rate", 
        horizontal = TRUE)

# Tenure
boxplot(mtn_clean$Customer_Tenure_in_months, 
        xlab = "Customer Tenure (Months)", 
        main = "Boxplot for Customer Tenure", 
        horizontal = TRUE)

# Unit Price
boxplot(mtn_clean$Unit_Price, 
        xlab = "Unit Price (₦)", 
        main = "Boxplot for Unit Price", 
        horizontal = TRUE)

# Number of Times Purchased
boxplot(mtn_clean$Number_of_Times_Purchased, 
        xlab = "Number of Times Purchased", 
        main = "Boxplot for Purchase Frequency", 
        horizontal = TRUE)

# Total Revenue
boxplot(mtn_clean$Total_Revenue, 
        xlab = "Total Revenue (₦)", 
        main = "Boxplot for Total Revenue", 
        horizontal = TRUE)

# Data Usage
boxplot(mtn_clean$Data_Usage, 
        xlab = "Data Usage (GB)", 
        main = "Boxplot for Data Usage", 
        horizontal = TRUE)
==============================================================
#Visualize Histograms

# Age
hist(mtn_clean$Age, 
     main = "Histogram for Customer Age",
     xlab = "Years", 
     ylab = "Count",
     breaks = 30, 
     col = "lightblue")

# Satisfaction Rate
hist(mtn_clean$Satisfaction_Rate, 
     main = "Histogram for Satisfaction Rate",
     xlab = "Rating (0 to 5)", 
     ylab = "Count",
     breaks = 6, 
     col = "lightblue")

# Customer Tenure
hist(mtn_clean$Customer_Tenure_in_months, 
     main = "Histogram for Customer Tenure",
     xlab = "Months", 
     ylab = "Count",
     breaks = 20, 
     col = "lightblue")

# Unit Price
hist(mtn_clean$Unit_Price, 
     main = "Histogram for Unit Price",
     xlab = "₦ (Naira)", 
     ylab = "Count",
     breaks = 30, 
     col = "lightblue")

# Number of Times Purchased
hist(mtn_clean$Number_of_Times_Purchased, 
     main = "Histogram for Times Purchased",
     xlab = "Frequency", 
     ylab = "Count",
     breaks = 10, 
     col = "lightblue")

# Total Revenue
hist(mtn_clean$Total_Revenue, 
     main = "Histogram for Total Revenue",
     xlab = "₦ (Naira)", 
     ylab = "Count",
     breaks = 30, 
     col = "lightblue")

# Data Usage
hist(mtn_clean$Data_Usage, 
     main = "Histogram for Data Usage",
     xlab = "Gigabytes (GB)", 
     ylab = "Count",
     breaks = 30, 
     col = "lightblue")

==========================================================================
#Bar Plots for Categorical Variable
library(ggplot2)

# Gender
ggplot(mtn_clean, aes(x = Gender)) + 
  geom_bar(fill = "lightblue") +
  labs(title = "Bar Plot for Gender", x = "Gender", y = "Count") +
  theme_minimal()

# State
ggplot(mtn_clean, aes(x = State)) + 
  geom_bar(fill = "lightblue") +
  labs(title = "Bar Plot for State", x = "State", y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# MTN Device
ggplot(mtn_clean, aes(x = MTN_Device)) + 
  geom_bar(fill = "lightblue") +
  labs(title = "Bar Plot for MTN Device", x = "Device", y = "Count") +
  theme_minimal()

# Customer Review
ggplot(mtn_clean, aes(x = Customer_Review)) + 
  geom_bar(fill = "lightblue") +
  labs(title = "Bar Plot for Customer Review", x = "Review", y = "Count") +
  theme_minimal()

# Subscription Plan
ggplot(mtn_clean, aes(x = Subscription_Plan)) + 
  geom_bar(fill = "lightblue") +
  labs(title = "Bar Plot for Subscription Plan", x = "Plan", y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Customer Churn Status
ggplot(mtn_clean, aes(x = Customer_Churn_Status)) + 
  geom_bar(fill = "lightblue") +
  labs(title = "Bar Plot for Churn Status", x = "Churn Status", y = "Count") +
  theme_minimal()
======================================================================
#Correlations Multivariate

install.packages("corrplot")  
library(corrplot)

# Calculate the correlation matrix (exclude categorical variables)
cor_matrix <- cor(mtn_clean[, sapply(mtn_clean, is.numeric)], use = "complete.obs")

# Create a correlation matrix from selected numeric columns
corr_matrix <- cor(mtn_clean[ , c("Age", 
                                  "Satisfaction_Rate", 
                                  "Customer_Tenure_in_months", 
                                  "Unit_Price", 
                                  "Number_of_Times_Purchased", 
                                  "Total_Revenue", 
                                  "Data_Usage")],
                   use = "complete.obs")

corrplot(corr = corr_matrix,
         method = "ellipse",
         type = "upper",
         tl.col = "black",     # Text label color
         tl.cex = 0.8)         # Text label size


# Load the necessary package
library(GGally)
# Filter out rows with NA in selected columns
vars <- c("Age", 
          "Satisfaction_Rate", 
          "Customer_Tenure_in_months", 
          "Total_Revenue", 
          "Data_Usage", 
          "Unit_Price", 
          "Number_of_Times_Purchased")

pair_data <- na.omit(mtn_clean[, vars])

# Create the pair plot with the updated variables
ggpairs(pair_data)


