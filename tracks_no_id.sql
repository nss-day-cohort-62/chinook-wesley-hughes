SELECT
    track.name,
    mediatype.name,
    genre.name
FROM Track
JOIN Album 
    ON track.albumid = album.albumId
JOIN Genre
    ON track.genreid = genre.genreid
JOIN MediaType
    ON track.mediatypeid = mediatype.mediatypeid;