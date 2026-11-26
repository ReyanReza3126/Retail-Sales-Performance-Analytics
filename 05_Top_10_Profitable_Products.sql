SELECT
    `Product Name`,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;