SELECT COUNT(*) AS InvoiceCount2009
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009';