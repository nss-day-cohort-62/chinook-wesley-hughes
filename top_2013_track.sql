SELECT TrackName, MAX(TrackCount) AS TopTrack2013
FROM (SELECT 
    t.name AS TrackName,
    COUNT(il.trackid) as TrackCount
FROM Track t
JOIN InvoiceLine il
    ON il.trackid = t.trackid
JOIN Invoice i
    ON i.invoiceid = il.invoiceid
WHERE strftime('%Y', i.InvoiceDate) = '2013'
GROUP BY il.trackid);