SELECT firstname || ' ' || lastname as FullName, CustomerId, Country FROM customer
WHERE country LIKE "%Brazil%";

