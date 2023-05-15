SELECT 
    billingcountry, 
    SUM(i.total)
FROM Invoice i
GROUP BY billingcountry;