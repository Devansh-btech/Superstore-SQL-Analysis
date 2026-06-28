-- ===========================================
-- Superstore SQL Analysis Project
-- Database: superstore
-- Table: superstore_data
-- ===========================================

USE superstore;

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore_data;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore_data;

-- 3. Top 10 Products by Sales
SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 4. Top 10 Customers by Sales
SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 5. Most Profitable State
SELECT State, SUM(Profit) AS Total_Profit
FROM superstore_data
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;

-- 6. Average Sales by Region
SELECT Region, AVG(Sales) AS Average_Sales
FROM superstore_data
GROUP BY Region
ORDER BY Average_Sales DESC;

-- 7. Least Profitable Products
SELECT `Product Name`, SUM(Profit) AS Total_Profit
FROM superstore_data
GROUP BY `Product Name`
ORDER BY Total_Profit ASC
LIMIT 10;

-- 8. Most Profitable Products
SELECT `Product Name`, SUM(Profit) AS Total_Profit
FROM superstore_data
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- 9. Top 10 Cities by Sales
SELECT City, SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- 10. Top 10 Sub Categories by Sales
SELECT `Sub Category`, SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY `Sub Category`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 11. Customers with the Most Orders
SELECT `Customer Name`, COUNT(`Order ID`) AS Total_Orders
FROM superstore_data
GROUP BY `Customer Name`
ORDER BY Total_Orders DESC
LIMIT 10;

-- 12. Category with Highest Average Profit
SELECT Category, AVG(Profit) AS Average_Profit
FROM superstore_data
GROUP BY Category
ORDER BY Average_Profit DESC;
