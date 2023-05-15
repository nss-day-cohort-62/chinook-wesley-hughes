SELECT 
    invoice.invoiceid, 
    COUNT(invoiceline.invoicelineid) AS LineItems
FROM invoice
JOIN  invoiceline
    ON invoice.invoiceid = invoiceline.invoiceid
GROUP BY invoice.invoiceid;