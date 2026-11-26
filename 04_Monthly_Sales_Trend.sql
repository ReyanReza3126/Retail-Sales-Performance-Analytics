SELECT
    DATE_FORMAT(
        STR_TO_DATE(`Order Date`, '%d-%m-%Y'),
        '%Y-%m'
    ) AS Month,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;