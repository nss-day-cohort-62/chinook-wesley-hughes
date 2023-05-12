SELECT 
    employee.FirstName || ' ' || employee.LastName AS AgentName,
    SUM(invoice.total) AS TotalSales
FROM employee
JOIN customer
    ON customer.supportrepid = employee.employeeid
JOIN invoice
    ON customer.customerid = invoice.customerid
GROUP BY customer.supportrepid;
