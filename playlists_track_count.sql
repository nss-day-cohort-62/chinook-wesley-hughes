SELECT
    playlist.name,
    COUNT(playlisttrack.trackid) AS track_count
FROM
    playlist
JOIN playlisttrack ON playlist.playlistid = playlisttrack.playlistid
GROUP BY
    playlist.playlistid, playlist.name;
