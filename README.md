# Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights
Explores customer behaviour in the telecom sector using regression and classification models to identify key drivers of revenue and retention. Highlights the impact of customer tenure, data usage, and pricing on revenue generation and marketing strategy optimisation.
## Project Overview
This project applies marketing analytics techniques to a simulated telecommunications dataset to uncover key factors influencing customer revenue and retention. The analysis focuses on understanding how behavioural and demographic variables contribute to business performance in a competitive digital environment.

The project begins with exploratory data analysis, including descriptive statistics, distribution analysis, and correlation mapping, to identify patterns in customer behaviour. It then applies multivariate regression models to evaluate the impact of customer tenure and data usage on total revenue, followed by an interaction model to assess whether customer satisfaction moderates these relationships.

Additionally, a regression tree classification model is implemented to identify the most important variables driving revenue segmentation. The findings consistently highlight customer tenure, unit price, and purchase frequency as critical contributors to revenue generation.

The insights emphasise the importance of customer retention over short term usage, suggesting that long term engagement strategies are more valuable for sustained revenue growth. The project demonstrates how data driven decision making can support targeted marketing campaigns, customer segmentation, and strategic planning in the telecommunications industry.
### Project Data Source
The dataset used in this project is a simulated telecommunications customer dataset based on real world product offerings from MTN Nigeria. It contains approximately 300 customer records and captures behavioural, demographic, and transactional attributes.

Key variables include customer demographics such as age, gender, and location, along with behavioural metrics like customer tenure, data usage, and purchase frequency. Transactional variables include subscription plans, unit pricing, and total revenue generated. The dataset also incorporates customer satisfaction ratings, reviews, and churn status.

Although simulated, the dataset reflects realistic telecom industry dynamics and pricing structures, making it suitable for applying regression and classification techniques to derive actionable business insights.
### Data Dictionary
1. **Customer ID:** Unique identifier for each customer
2. **Age:** Age of the customer between 16 and 80
3. **State:** The state in which the customer resides, in Nigeria
4. **MTN Device:** The device of choice purchased by the customer including Mobile SIM Card, Broadband MiFi, 4G Router and 5G Broadband Router
5. **Gender:** The specific gender of the customer. Male or Female
6. **Satisfaction Rate:** Score of 0 to 5 indicating how satisfied the customer is, 5 being the most satisfied
7. **Customer Review:** A categorical variable: Poor, Fair, Good, Very Good, Excellent
8. **Customer Tenure in months:** Duration in months for how long the customer has been using the services
9. **Subscription Plan:** Name of the data plan provided by MTN: 60 GB, 7GB Monthly plan, etc.
10. **Unit Price:** Cost of each data plan in Nigerian Naira (₦).
11. **Data Usage:** Estimated data usage by each customer in gigabytes (GB)
12. **Number of Times Purchased:** Number of times the subscription plan had been renewed.
13. **Total Revenue:** Unit price x Number of times Purchased. Total amount spent by the customer
14. **Customer Churn Status:** The status of whether the customer churned or not (Yes or No).
### Feature Selection
**For Multivariate Regression**

![FS1](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/tables/Feature%20Selection%20for%20Multivariate%20Regression.png)

**For Multivariate Regression with Interaction**

![FS2](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/tables/Feature%20Selection%20for%20Multivariate%20Regression%20with%20Interaction.png)

**For Classification Analysis**

![FS3](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/tables/Feature%20Selection%20for%20Classification%20Analysis.png)
## Data Exploration and Preparation
### Descriptive Statistics
![DS](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/results/Descriptive%20Statistics.png)

Descriptive statistics give a comprehensive view of all the variables.  313 customers make up the dataset. For variables such as total revenue and unit price, the median is lower than the mean which indicates few high value customers skew the average upwards, which gives it a right skewed distribution. The standard deviation is high for unit price, total revenue and data usage that signifies that there is disparity and diversity in customer behavior for these indicators. The mean for Customer Churn is 1.68, closer to 2, so most customers are active, but a minority amount has churned. The mean revenue generated by each user is ₦ 222,666.45. Customers are also on an average, moderately satisfied while the gender ratio is evenly distributed between men and women, with mean being 1.52. The maximum amount of revenue generated from customer is ₦ 3000,000. The max and min age range shows the spread being from 16 to 80. 
### Numerical Feature analysis 
#### Boxplots
![BX1](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Boxplot%20for%20Satisfaction%20Rate.png)
![BX2](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Boxplot%20for%20Age.png)
![BX3](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Boxplot%20for%20Customer%20Tenure.png)
![BX4](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Boxplot%20for%20Purchase%20Frequency.png)

The boxplot for Satisfaction rate shows a median of 3, matching its mean from descriptive statistics. The spread is from 2 to 4, which shows the majority of rating is done within this range. The lower quartile for age is 30 while the upper quantity is approximately 65. Most of the customers are aged in this range.  The customer tenure box plot indicates that on average customers used MTN services for 25 months. Most of the customers’ tenure ranges from 15 to 40. The average frequency of purchases is around 10. 
#### Histograms
![HG1](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Histogram%20for%20Customer%20Age.png)
![HG2](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Histogram%20for%20Customer%20Tenure.png)
![HG3](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Histogram%20for%20Unit%20Price.png)
![HG4](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Histogram%20for%20Times%20Purchased.png)
![HG5](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Histogram%20for%20Total%20Revenue.png)
![HG6](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Histogram%20for%20Data%20Usage.png)

The histograms for the numerical variables display their distribution and skewness. The distribution for customer age is uniform which means that marketing strategies should be inclusive for all age groups. Customer tenure is mostly dense from 10 to 30 months with fewer at extremes. 
Unit price is strongly right-skewed with most customers paying less per unit prices. There are, however, a few outliers that pay high amounts. These ‘VIP’ customers are important for the high profits for the company and should be prioritized and retained.  The total revenue is also strongly right skewed with most of the customers generating revenues from ₦ 0 to ₦ 50,0000 for the company. Times purchased and Data usage show a uniform distribution with no pattern.  
### Categorical Feature Analysis 
![BP1](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Bar%20Plot%20for%20Gender.png)
![BP2](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Bar%20Plot%20for%20MTN%20Device.png)
![BP3](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Bar%20Plot%20for%20Customer%20Review.png)
![BP4](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Bar%20Plot%20for%20Churn%20Status.png)
![BP5](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Bar%20Plot%20for%20Subscription%20Plans.png)

Categorical Feature analysis displays bar blots for each variable. Gender, Customer review along with Devices used across customers are uniformly distributed for each category. Customer review having high poor reviews is also an area for improvement so that customer loyalty is not diminished. Majority of the customers had no churn (1=No) which is a positive insight.  
165 GB monthly plan is the most popular, along with 60GB monthly and 65 GB monthly plans. The company gains revenue mainly from monthly subscription plans, indicating that more diversity should be introduced for them. Lower sought after subscription plans such as 1 GB daily plan should be reevaluated and marketed more.   
### Correlations
![CM](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Correlation%20Matrix.png)

The correlation matrix displays relationships between the variables. Customers who pay higher per unit price have a positive correlation with total revenue. Customer tenure also shows a positive correlation with revenue and data usage which means that customers that use the services for longer periods of tiem contribute more money to the company and use up more data packs. Number of purchases is positively correlated with the total revenue and data usage, signifying that more frequent purchases contributes more profits to the organization. 

![PP](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Pairplot.png)

The pair plot indicates strong positive correlation of Revenue with data usage (0.613), unit price (0.411), the number of times purchased (0.383) and Tenure (0.451). Negative correlations are weak or negligible. Linear upwards trends are visible between them while the satisfaction rate does not have a clear trend with any variable.  
## Data Analysis
### Hypothesis Statement
Businesses can maintain their position in the market by the profits they earn. Every organization strived to obtain high revenues so that they can expand or enhance their product offerings to retain customers and attract new ones. Total Revenue in this data set is the core indicator of the money generated through their service offerings to the customer. 
#### Multivariate Regression 
The hypothesis below examines the relationship between Total revenue, the tenure of the customer with the company and the total data they consume. This gives more insight into what impacts revenue streams for the company so future strategies can be formulated accordingly. 

**H₀: There is no significant difference in the impact of Customer Tenure and Data Usage on Total Revenue.**

**H₁: One of Customer Tenure or Data Usage has a significantly higher impact on Revenue than the other.**
#### Multivariate Regression with Interaction 
While understanding the variables that impact revenue is insightful, other determinants should be examined to assess if they have an impact on their relationship with the total revenue incurred by the company. Thus, the following hypothesis explores the influence of satisfaction levels of consumers on the relationship with tenure and revenue, and data usage and revenue.  

**H₀: Satisfaction rate does not influence the relationship between Customer Tenure, Data Usage and Total Revenue** 

**H₁: Satisfaction rate influences the relationship between Customer Tenure, Data Usage and Total Revenue**
### Multivariate Regression 
A linear regression analysis is performed to determine the relationship between revenue, data usage and customer tenure. To determine if we reject the null hypothesis or not, the following econometric model is run. 

![EQ1](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/equations/Multivariate%20Regression%20Equation.png)

![Res1](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/results/Multivariate%20Regression%20Output.png)

The results of the regression model display the intercept to be -105223.8. Both variables are highly significant and impact Total revenue as Customer tenure and data usage have p<0.001 respectively. Analyzing coefficients, for each additional month that the customer uses the service, total revenue increases by 7,574.8. For each additional GB of data usage, total revenue increase by 1,519.3. The r-squared value indicates that about 23 percent of the variance in revenue is explained by the two independent variables. Based on the regression output, Customer tenure is more significant in impacting total revenue as the p-value 6.45e-07 is much smaller.  

![MRG1](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Total%20Revenue%20vs%20Data%20Usage%20with%20Regression%20Line.png)

![MRG2](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Total%20Revenue%20vs%20Customer%20Tenure%20with%20Regression%20Line.png)

The Graphs show a visual representation of each independent variable’s relationship with Total revenue. Customer Tenure shows a more steeper curve, indicating a stronger positive correlation, as reiterated by the regression analysis. The revised equation is as below: 

![EQ2](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/equations/Multivariate%20Regression%20Final%20Equation.png)

**As a result, we reject the null hypothesis as Customer tenure has a higher impact on revenue than data usage.**

![CTvDS](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Customer%20Tenure%20vs%20Data%20Usage%20based%20on%20Total%20Revenue.png)
### Multivariate Regression with Interaction
![EQ3](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/equations/Multivariate%20Regression%20with%20Interaction%20Equation.png)

![Res2](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/results/Multivariate%20Regression%20with%20Interaction%20Output.png)

The results for the regression model with interaction of satisfaction rate display key numerical values. The coefficients have substantially decreased from the previous regression model without the interaction. Furthermore, the interaction between customer tenure and satisfaction rate along with data usage and satisfaction rate is not significant as p>0.001. This conclusion was unexpected considering the more satisfied the customers are, the longer they would use the service. However from this telecommunication company there was no relevance between the variables and satisfaction. However, the r-squared value is seen to increase to 24 percent, indicating that 24 percent of changes in total revenue is explained by the model. While Data usage and Tenure are statistically significant in relation to Revenue, customer satisfaction does not influence that relationship. The revised equation is as seen below:  

![EQ4](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/equations/Multivariate%20Regression%20with%20Interaction%20Final%20Equation.png)

**As a result, we fail to reject the null hypothesis as satisfaction rate does not influence the relationship between Tenure and revenue as well as data usage and revenue.**
### Classification Model
The Regression tree model was applied to asses factors that impact Total revenue of the organization.

![VI](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/results/Variable%20Importance%20and%20Regression%20Tree%20Output.png)

The variable importance score indicates that Unit per price, frequency of purchase, customer tenure and data usage have relatedly high scores. This signifies that they have a direct impact on the revenue generated. As the number of splits in the regression tree increases from 0 to 6, the relative error and cross validated error decreases. This can be interpreted as the tree continues to fit the data better as it grows. However, to prevent overfitting, spitting is avoided when the cross validated error stops improving.  

![RT](https://github.com/nehasiddiqui0026-tech/Data-Driven-Telecom-Customer-Analytics-for-Revenue-Retention-and-Behavioral-Insights/blob/main/visualisations/Regression%20Tree%20for%20Total%20Revenue.png)

The top splitting is based on unit price, as it scored the highest in variable importance. Majority of the customers (97.1%) have spent less than 112,000 per unit of data package. Customer tenure for that majority is split to determine revenue. The smaller groups of individuals that have spent higher per unit are then assessed for the frequency of their purchases, as the high number of frequent purchases leads to high revenue.  

The group with the highest revenue spends more per unit on data packages and has a more frequent number of purchases. The lowest contributors to revenue are those which spend less on one package and have a tenure of less than 33 months. It is imperative to understand the drivers for high revenue as well as low revenue. The longer a customer stays with the telecommunication company, the more it will spend and assert future repeat purchases. Consumer retention is as important as attracting high spenders.  
### Insights and Recommendations
Operating in a complex and fast-paced environment poses many challenges for the telecommunication sector. Due to this, it is important for the industry to adopt data driven decision making that can provide them with marketing insights. This helps them understand their target customer market and adjust to the growing changes in the technological sphere. 

The report provides regression analysis and classification insights to variables that have the highest impact on total revenue and consumer retention. The multivariate regression model displayed how customer tenure had a higher impact than data usage on total revenue. Telecommunication companies should strive for consumer retention than users who consume more data. Customer loyalty directly leads to a more regular purchase cycle. Furthermore, both genders use the services while monthly subscription plans attract them more.  

Marketing campaigns should focus more on monthly subscription plans, with varying data and unit prices. The regression tree also provided insights into key consumer variables. High spending customers do contribute the most to total revenue, but frequent purchases and tenure provide more assurety to the brand. A defensive marketing strategy focuses on reduction of brand switching. Each customer is a key contributor to the organization. Tailored marketing campaigns which promote longevity and customer retention can provide more consistent results in a volatile and competitive market.  
