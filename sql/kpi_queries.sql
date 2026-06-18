-- ==========================================
-- KPI CALCULATIONS
-- Financial KPI Dashboard
-- ==========================================

-- Total Revenue
SELECT
    ROUND(SUM(Revenue),2) AS Total_Revenue
FROM financial_data;

-- Total Expenses
SELECT
    ROUND(SUM(Expenses),2) AS Total_Expenses
FROM financial_data;

-- Total Profit
SELECT
    ROUND(SUM(Profit),2) AS Total_Profit
FROM financial_data;

-- Profit Margin %
SELECT
    ROUND(
        (SUM(Profit) / SUM(Revenue)) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM financial_data;

-- Total Budget Target
SELECT
    ROUND(SUM(Budget_Target),2) AS Total_Budget
FROM financial_data;

-- Budget Achievement %
SELECT
    ROUND(
        (SUM(Revenue) / SUM(Budget_Target)) * 100,
        2
    ) AS Budget_Achievement_Percentage
FROM financial_data;

-- Average Revenue per Transaction
SELECT
    ROUND(AVG(Revenue),2) AS Avg_Revenue
FROM financial_data;

-- Average Profit per Transaction
SELECT
    ROUND(AVG(Profit),2) AS Avg_Profit
FROM financial_data;