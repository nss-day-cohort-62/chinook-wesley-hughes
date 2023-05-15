SELECT COUNT(*) AS TotalInvoices, billingcountry FROM invoice
GROUP BY billingcountry;
