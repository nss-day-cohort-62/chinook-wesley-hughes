SELECT COUNT(*) AS TotalInvoiceLines, invoiceid FROM invoiceline
GROUP BY invoiceid;
