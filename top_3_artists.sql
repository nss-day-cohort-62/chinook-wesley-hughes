SELECT
    a.name,
    SUM(i.total) as TotalSales
FROM
    Artist a
JOIN
    Album al
ON al.artistid = a.artistid
JOIN
    InvoiceLine il
ON il.trackid = t.trackid
JOIN 
    Invoice i
ON i.invoiceid = il.invoiceid
JOIN Track t
ON al.albumid = t.albumid
GROUP BY a.artistid
ORDER BY TotalSales DESC
LIMIT 3;
