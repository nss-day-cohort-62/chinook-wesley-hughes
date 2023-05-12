SELECT invoiceline.*, track.name AS TrackName, artist.name AS ArtistName FROM invoiceline
JOIN Track ON invoiceline.trackid = track.trackid
JOIN Album ON track.albumid = album.albumid
JOIN Artist ON album.artistid = artist.artistid;