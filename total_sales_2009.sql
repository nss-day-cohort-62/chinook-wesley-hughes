SELECT SUM(total) AS InvoiceSales2009
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009';