SELECT
  e.FirstName || ' ' || e.LastName AS AgentName,
  SUM(i.Total) AS Sales2009
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE strftime('%Y', i.InvoiceDate) = '2009'
GROUP BY e.EmployeeId
ORDER BY Sales2009 DESC
LIMIT 1;