SELECT firstname || ' ' || lastname as FullName, CustomerId, Country FROM customer
WHERE country NOT LIKE "%USA%";

