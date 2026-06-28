-- Superstore SQL Analysis Project
-- Author: Your Name

USE superstore;

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore_data;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore_data;

-- 3. Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY Category;

-- 4. Profit by Category
SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore_data
GROUP BY Category;

-- 5. Top 10 Products by Sales
SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 6. Top 10 Customers by Sales
SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
