SELECT total, customer.firstname || ' ' || customer.lastname AS CustomerName, customer.country, employee.firstname || ' ' || employee.lastname AS SalesAgentName FROM invoice
JOIN customer ON customer.customerId = invoice.customerId
JOIN employee ON customer.supportrepid = employee.employeeId;