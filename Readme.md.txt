 Telecommunications Customer Churn: A SQL-Based Business Analysis

 1. Project Overview

Customer churn is a major challenge for telecommunications companies because losing customers can affect recurring revenue and long-term business growth.

This project uses SQL to analyse customer churn patterns in the IBM Telco Customer Churn dataset. The objective is to identify customer groups with higher churn rates, examine patterns associated with customer retention, and develop data-informed recommendations that could support customer retention strategies.


 2. Business Questions

This analysis investigates the following questions:

1. What proportion of customers have churned?
2. Which contract types have the highest churn rates?
3. How does churn vary across payment methods?
4. Which internet service groups experience higher churn?
5. How does customer tenure relate to churn?
6. Is churn different between customers with and without technical support?
7. How do average monthly charges compare between churned and retained customers?


 3. Dataset

-Dataset:IBM Telco Customer Churn
-Source:Kaggle
-Original records:7,043 customers
-Columns: 21
-Database: SQLite
-Tool: DB Browser for SQLite
-Language:SQL

The dataset contains customer demographics, account information, subscribed services, billing details and churn status.


 4. Data Preparation and Quality Checks

The following checks were performed:

- Verified the total number of customer records.
- Inspected table structure and column data types.
- Checked for duplicate customer IDs.
- Investigated missing values in `TotalCharges`.
- Examined the distribution of churned and retained customers.

Eleven records contained NULL values in `TotalCharges`. All eleven had zero tenure and were classified as non-churned customers.

These NULL values were preserved rather than replaced with zero, maintaining the original data.

No duplicate customer IDs were detected.


 5. Key Findings

Overall Churn

- Total customers: 7,043
- Churned customers: 1,869
- Retained customers: 5,174
- Overall churn rate: **26.54%**

 Churn by Contract Type

| Contract type | Churn rate |
|---|---:|
| Month-to-month | 42.71% |
| One year | 11.27% |
| Two year | 2.83% |

Month-to-month customers recorded the highest churn rate, while two-year contract customers recorded the lowest.

 Churn by Payment Method

| Payment method | Churn rate |
|---|---:|
| Electronic check | 45.29% |
| Mailed check | 19.11% |
| Bank transfer (automatic) | 16.71% |
| Credit card (automatic) | 15.24% |

Customers using electronic checks had the highest churn rate among the payment groups analysed.

 Churn by Internet Service

| Internet service | Churn rate |
|---|---:|
| Fiber optic | 41.89% |
| DSL | 18.96% |
| No internet service | 7.40% |

Fiber optic customers recorded the highest churn rate among the three internet service groups.


 Churn by Customer Tenure

| Customer group | Churn rate |
|---|---:|
| New (0–12 months) | 47.44% |
| Developing (13–24 months) | 28.71% |
| Established (25–48 months) | 20.39% |
| Long-term (49–72 months) | 9.51% |

The analysis revealed a clear pattern: churn rates decreased as customer tenure increased.

Churn by Technical Support

| Technical support | Churn rate |
|---|---:|
| No | 41.64% |
| Yes | 15.17% |
| No internet service | 7.40% |

Customers without technical support recorded a higher churn rate than customers with technical support.

Financial Analysis

| Customer status | Average monthly charges |
|---|---:|
| Churned | 74.44 |
| Retained | 61.27 |

Churned customers had approximately 21.5% higher average monthly charges than retained customers.

This is an observed difference in the dataset, not a verified measure of realised revenue loss.


6. Business Recommendations

Based on the findings, the following actions could be investigated:

1.Improve early customer retention:Develop onboarding and engagement strategies for new customers, particularly within their first 12 months.
2.Review month-to-month contracts:Investigate why customers on flexible contracts leave at higher rates and test appropriate retention incentives.
3.Investigate electronic-check payments:Examine whether payment friction or customer experience issues contribute to the higher churn rate.
4.Review fiber optic services:Investigate service quality, pricing, customer complaints and overall satisfaction among fiber optic customers.
5.Improve technical support accessibility:Assess whether better support availability and response times could improve customer retention.
6.Review higher-priced plans:Examine whether customers paying higher monthly charges perceive sufficient value from their subscriptions.

 7. Limitations

- The analysis identifies associations, not proof of causation.
- Customer groups may overlap, so findings should not be interpreted as independent explanations of churn.
- The dataset does not provide direct customer feedback explaining why individuals left.
- Higher average monthly charges among churned customers do not establish the company's actual revenue loss.
- Eleven NULL values in `TotalCharges` were retained.

8. Skills Demonstrated

- SQL data exploration
- Data quality checks
- Aggregate functions
- GROUP BY and HAVING
- CASE WHEN statements
- Common Table Expressions (CTEs)
- Conditional aggregation
- Customer segmentation
- Churn rate calculations
- Business interpretation and recommendations

 9. Project Files

- telecom_churn_analysis.sql — SQL queries used for the analysis.
- data_dictionary.md — Dataset column descriptions and definitions.
- images/ — Screenshots of selected query results and findings.

10. Conclusion

The analysis identified several customer groups with notably higher churn rates, particularly new customers, month-to-month contract customers, electronic-check users, fiber optic subscribers and customers without technical support.

These findings provide areas for further investigation and potential retention strategies. They also demonstrate how SQL can be used to transform raw customer data into meaningful business insights.



## 11. Project Screenshots

![Overall Churn](https://github.com/D1898/Telecommunications_customer_churn/blob/main/images/overall_churn_analysis.png?raw=true)

### Churn by Contract Type
<!-- Add this screenshot when available -->

### Churn by Tenure
![Churn by Tenure](images/Churn%20by%20Tenure.png)

### Churn by Payment Method
![Churn by Payment](images/Churn%20by%20Payment%20Method.png)

### Churn by Internet Service
![Churn by Service](images/Churn%20by%20service.png)

### Financial Analysis
![Financial Analysis](images/Financial%20Analysis.png)
