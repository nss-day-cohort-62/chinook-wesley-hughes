SELECT SUM(total) AS InvoiceSales2011
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2011';