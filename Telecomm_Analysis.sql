
--Analysis 1
 WITH Analysus AS(
SELECT Contract,
COUNT(customerID) AS total_customer,
SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers
From Telecom
GROUP BY Contract
)
Select Contract, churned_customers, total_customer,
ROUND(((churned_customers*100.0)/total_customer),2) AS left_over
FROM Analysus
Order by Left_over DESC;

-- Analysis 2
WITH rate AS(
SELECT PaymentMethod,
COUNT(customerID) AS total_customer,
SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers
From Telecom
GROUP BY PaymentMethod
)
SELECT PaymentMethod,
churned_customers, total_customer,
ROUND(((churned_customers*100.0)/total_customer),2) AS left_over
FROM rate
Order by Left_over DESC;

-- Analysis 3
WITH Internet_pay AS(
SELECT InternetService,
COUNT(customerID) AS total_customer,
SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers
From Telecom
GROUP BY InternetService
)
SELECT InternetService,
churned_customers, total_customer,
ROUND(((churned_customers*100.0)/total_customer),2) AS percentage_left_over
FROM Internet_pay
Order by percentage_left_over DESC;

-- Analysis 4
WITH customer_tenure AS(
SELECT 
CASE
WHEN tenure BETWEEN 0 AND 12 THEN 'New_customers'
            WHEN tenure BETWEEN 13 AND 24 THEN 'Developing_Customers'
            WHEN tenure BETWEEN 25 AND 48 THEN 'Established_Customers'
            WHEN tenure BETWEEN 49 AND 72 THEN 'Long_customers'
			END AS Tenure_group,
COUNT(*) AS Total_customers,
SUM(CASE WHEN churn = "Yes" 
       THEN 1 
	   ELSE 0 END) AS Churned_customers
FROM Telecom
GROUP BY Tenure_group
)

SELECT Tenure_group, churned_customers, total_customers,
ROUND(((churned_customers*100.0)/total_customers),2) AS percentage_left_over
FROM customer_tenure
Order by percentage_left_over DESC;


-- Analysis 5
WITH Support AS(
SELECT TechSupport,
COUNT(customerID) AS total_customer,
SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers
From Telecom
GROUP BY TechSupport
)
Select TechSupport, churned_customers, total_customer,
ROUND(((churned_customers*100.0)/total_customer),2) AS percent_left
FROM Support
Order by Percent_Left DESC;

-- Analysis 6
WITH Final_analysis AS(
SELECT churn,
SUM(CASE
WHEN churn = "Yes" THEN 1
   ELSE 0
   END) AS churned_customers,
 SUM(CASE
   WHEN churn = "No" THEN 1
   ELSE 0
   END) AS retained_customers,
	COUNT(*) AS total_customers,
	SUM(MonthlyCharges) AS total_monthly_charges,
        AVG(MonthlyCharges) AS average_monthly_charges
FROM Telecom
GROUP BY churn
)
SELECT total_customers,churn,
ROUND(total_monthly_charges,2) AS avch,
ROUND(average_monthly_charges,2) AS rech
FROM Final_analysis
   

