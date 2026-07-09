SELECT TOP 5 *
FROM [dbo].[Digital_Payments_final_Dataset (1)];


SELECT COUNT(*) AS Total_Rows
FROM [dbo].[Digital_Payments_final_Dataset (1)];

--Total Transaction Value
SELECT
ROUND(SUM(amount),2) AS Total_Transaction_Value
FROM [dbo].[Digital_Payments_final_Dataset (1)];

--Average Transaction Value
SELECT
ROUND(AVG(amount),2) AS Average_Transaction_Value
FROM [dbo].[Digital_Payments_final_Dataset (1)];


--Payment Method Distribution

SELECT
Payment_Method,
COUNT(*) AS Total_Transactions
FROM [dbo].[Digital_Payments_final_Dataset (1)]
GROUP BY Payment_Method
ORDER BY Total_Transactions DESC;

--Transaction Status
SELECT
Transaction_Status,
COUNT(*) AS Total_Count
FROM [dbo].[Digital_Payments_final_Dataset (1)]
GROUP BY Transaction_Status;


-- Fraud Transactions Analysis
SELECT
type,
COUNT(*) AS Fraud_Transactions
FROM [dbo].[Digital_Payments_final_Dataset (1)]
WHERE isFraud = 1
GROUP BY type
ORDER BY Fraud_Transactions DESC;

--Transaction Category Analysis

SELECT
Transaction_Category,
COUNT(*) AS Total_Transactions
FROM [dbo].[Digital_Payments_final_Dataset (1)]
GROUP BY Transaction_Category
ORDER BY Total_Transactions DESC;

--Amount Segment Analysis
SELECT
Amount_Segment,
COUNT(*) AS Total_Transactions
FROM [dbo].[Digital_Payments_final_Dataset (1)]
GROUP BY Amount_Segment
ORDER BY Total_Transactions DESC;

--Top 10 Customers
SELECT TOP 10
nameOrig,
SUM(amount) AS Total_Value
FROM [dbo].[Digital_Payments_final_Dataset (1)]
GROUP BY nameOrig
ORDER BY Total_Value DESC;

--Top 10 Recipients
SELECT TOP 10
nameDest,
SUM(amount) AS Total_Value
FROM [dbo].[Digital_Payments_final_Dataset (1)]
GROUP BY nameDest
ORDER BY Total_Value DESC;

