SELECT
    Discount,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY Discount
ORDER BY Discount;