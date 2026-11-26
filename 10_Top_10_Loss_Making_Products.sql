SELECT
    `Product Name`,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC
LIMIT 10;