SELECT billingcountry, SUM(i.total) AS TotalSales
FROM Invoice i
GROUP BY billingcountry
ORDER BY TotalSales DESC
LIMIT 1;
