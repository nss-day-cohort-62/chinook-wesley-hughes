SELECT firstname || ' ' || lastname as FullName, invoiceId, invoicedate, billingCountry FROM invoice
JOIN customer on customer.customerId = invoice.customerId
WHERE country LIKE "%Brazil%";

