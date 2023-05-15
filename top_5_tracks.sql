SELECT 
    t.name AS TrackName,
    COUNT(il.trackid) as TrackCount
FROM Track t
JOIN InvoiceLine il
    ON il.trackid = t.trackid
GROUP BY il.trackid
ORDER BY TrackCount DESC
LIMIT 5;