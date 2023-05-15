SELECT COUNT(*) AS InvoiceCount2011
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2011';