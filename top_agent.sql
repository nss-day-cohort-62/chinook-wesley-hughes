SELECT
  e.FirstName || ' ' || e.LastName AS AgentName,
  SUM(i.Total) AS TotalSales
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1;