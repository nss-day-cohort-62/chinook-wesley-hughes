SELECT
    Name,
    MAX(TotalMTPurchases) AS NumberOfPurchases
FROM
(SELECT
    m.name AS Name,
    COUNT(m.MediaTypeId) AS TotalMTPurchases
FROM
    MediaType m
JOIN
    InvoiceLine il
ON il.trackid = t.trackid
JOIN 
    Invoice i
ON i.invoiceid = il.invoiceid
JOIN Track t
ON t.mediatypeid = m.mediatypeid
GROUP BY m.mediatypeid
ORDER BY TotalMTPurchases DESC);

