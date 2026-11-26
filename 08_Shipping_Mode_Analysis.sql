SELECT
    `Ship Mode`,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;