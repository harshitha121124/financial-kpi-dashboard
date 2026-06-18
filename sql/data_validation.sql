-- ==========================================
-- DATA VALIDATION CHECKS
-- Financial KPI Dashboard
-- ==========================================

-- Total Records
SELECT COUNT(*) AS Total_Records
FROM financial_data;

-- Check Date Range
SELECT
    MIN(Date) AS Start_Date,
    MAX(Date) AS End_Date
FROM financial_data;

-- Revenue Range
SELECT
    MIN(Revenue) AS Minimum_Revenue,
    MAX(Revenue) AS Maximum_Revenue
FROM financial_data;

-- Expense Range
SELECT
    MIN(Expenses) AS Minimum_Expense,
    MAX(Expenses) AS Maximum_Expense
FROM financial_data;

-- Profit Range
SELECT
    MIN(Profit) AS Minimum_Profit,
    MAX(Profit) AS Maximum_Profit
FROM financial_data;

-- Check for Null Revenue
SELECT *
FROM financial_data
WHERE Revenue IS NULL;

-- Check for Null Expenses
SELECT *
FROM financial_data
WHERE Expenses IS NULL;

-- Check Negative Revenue
SELECT *
FROM financial_data
WHERE Revenue < 0;

-- Check Negative Expenses
SELECT *
FROM financial_data
WHERE Expenses < 0;

-- Check if Expenses exceed Revenue
SELECT *
FROM financial_data
WHERE Expenses > Revenue;

-- Distinct Regions
SELECT DISTINCT Region
FROM financial_data;

-- Distinct Departments
SELECT DISTINCT Department
FROM financial_data;

-- Distinct Product Categories
SELECT DISTINCT Product_Category
FROM financial_data;