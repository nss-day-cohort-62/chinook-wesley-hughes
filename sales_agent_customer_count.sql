SELECT
  e.FirstName || ' ' || e.LastName AS EmployeeName,
  COUNT(c.customerid) AS CustomerCount
FROM Employee e
LEFT JOIN Customer c
    ON c.supportrepid = e.employeeid
GROUP BY e.employeeid;