SELECT invoiceline.*, track.name AS TrackName FROM invoiceline
JOIN Track ON invoiceline.trackid = track.trackid;