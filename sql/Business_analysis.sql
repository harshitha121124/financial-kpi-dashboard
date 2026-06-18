-- ==========================================
-- BUSINESS ANALYSIS
-- Financial KPI Dashboard
-- ==========================================

-- Revenue by Region
SELECT
    Region,
    ROUND(SUM(Revenue),2) AS Revenue
FROM financial_data
GROUP BY Region
ORDER BY Revenue DESC;

-- Profit by Region
SELECT
    Region,
    ROUND(SUM(Profit),2) AS Profit
FROM financial_data
GROUP BY Region
ORDER BY Profit DESC;

-- Revenue by Department
SELECT
    Department,
    ROUND(SUM(Revenue),2) AS Revenue
FROM financial_data
GROUP BY Department
ORDER BY Revenue DESC;

-- Profit by Department
SELECT
    Department,
    ROUND(SUM(Profit),2) AS Profit
FROM financial_data
GROUP BY Department
ORDER BY Profit DESC;

-- Revenue by Product Category
SELECT
    Product_Category,
    ROUND(SUM(Revenue),2) AS Revenue
FROM financial_data
GROUP BY Product_Category
ORDER BY Revenue DESC;

-- Profit by Product Category
SELECT
    Product_Category,
    ROUND(SUM(Profit),2) AS Profit
FROM financial_data
GROUP BY Product_Category
ORDER BY Profit DESC;

-- Monthly Revenue Trend
SELECT
    Year,
    MONTH(Date) AS Month_Number,
    ROUND(SUM(Revenue),2) AS Revenue
FROM financial_data
GROUP BY Year, MONTH(Date)
ORDER BY Year, Month_Number;

-- Monthly Profit Trend
SELECT
    Year,
    MONTH(Date) AS Month_Number,
    ROUND(SUM(Profit),2) AS Profit
FROM financial_data
GROUP BY Year, MONTH(Date)
ORDER BY Year, Month_Number;

-- Quarterly Revenue
SELECT
    Quarter,
    ROUND(SUM(Revenue),2) AS Revenue
FROM financial_data
GROUP BY Quarter
ORDER BY Quarter;

-- Quarterly Profit
SELECT
    Quarter,
    ROUND(SUM(Profit),2) AS Profit
FROM financial_data
GROUP BY Quarter
ORDER BY Quarter;

-- Top 10 Most Profitable Transactions
SELECT
    Transaction_ID,
    Region,
    Product_Category,
    Revenue,
    Expenses,
    Profit
FROM financial_data
ORDER BY Profit DESC
LIMIT 10;