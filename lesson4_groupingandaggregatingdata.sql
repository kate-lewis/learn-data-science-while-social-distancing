CREATE TABLE spice_girls(
    album varchar(255),
    title varchar(255),
    length TIME(0),
    track_number int,
    single_released date,
    peak_chart_position_au int,
    chart_weeks_au int);
INSERT INTO spice_girls(
    album,
    title,
    length,
    track_number,
    single_released,
    peak_chart_position_au,
    chart_weeks_au
)
VALUES
    ("Spice", "Wannabe", '000:02:53', 1, '1996-07-08', 1, 29),
    ("Spice", "Say You'll Be There", '000:03:55', 2, '1996-10-10', 12, 22),
    ("Spice", "2 Become 1", '000:04:01', 3, '1996-12-16', 2, 18),
    ("Spice", "Love Thing", '000:03:38', 4, NULL, NULL, NULL),
    ("Spice", "Last Time Lover", '000:04:11', 5, NULL, NULL, NULL),
    ("Spice", "Mama", '000:05:04', 6, '1997-02-27', 13, 14),    
    ("Spice", "Who Do You Think You Are", '000:04:00', 7, '1997-02-27', 13, 14),
    ("Spice", "Something Kinda Funny", '000:04:05', 8, NULL, NULL, NULL),
    ("Spice", "Naked", '000:04:25', 9, NULL, NULL, NULL),
    ("Spice", "If U Can't Dance", '000:03:48', 10, NULL, NULL, NULL),
    ("Spice World", "Spice Up Your Life", '000:02:53', 1, '1997-10-06', 8, 20),
    ("Spice World", "Stop", '000:03:24', 2, '1997-01-01', 5, 21),
    ("Spice World", "Too Much", '000:04:31', 3, '1997-12-08', 9, 15),
    ("Spice World", "Saturday Night Divas", '000:04:25', 4, NULL, NULL, NULL),
    ("Spice World", "Never Give Up on the Good Times", '000:04:30', 5, NULL, NULL, NULL),
    ("Spice World", "Move Over", '000:02:46', 6, NULL, NULL, NULL),    
    ("Spice World", "Do It", '000:04:04', 7, NULL, NULL, NULL),
    ("Spice World", "Denying", '000:03:46', 8, NULL, NULL, NULL),
    ("Spice World", "Viva Forever", '000:05:09', 9, '1998-07-20', 2, 21),
    ("Spice World", "The Lady Is a Vamp", '000:03:09', 10, NULL, NULL, NULL),
    ("Forever", "Holler", '000:04:15', 1, '2000-10-23', 2, 15),
    ("Forever", "Tell Me Why", '000:04:13', 2, NULL, NULL, NULL),
    ("Forever", "Let Love Lead the Way", '000:04:57', 3, '2000-10-23', 2, NULL),
    ("Forever", "Right Back at Ya", '000:04:09', 4, NULL, NULL, NULL),
    ("Forever", "Get Down with Me", '000:03:45', 5, NULL, NULL, NULL),
    ("Forever", "Wasting My Time", '000:04:13', 6, NULL, NULL, NULL),    
    ("Forever", "Weekend Love", '000:04:04', 7, NULL, NULL, NULL),
    ("Forever", "Time Goes By", '000:04:51', 8, NULL, NULL, NULL),
    ("Forever", "If You Wanna Have Some Fun", '000:05:25', 9, NULL, NULL, NULL),
    ("Forever", "Oxygen", '000:04:55', 10, NULL, NULL, NULL),
    ("Forever", "Goodbye", '000:04:35', 11, '1998-12-07', 3, 16)
;

SELECT
    SUM(length) AS 'total_length'
FROM 
    spice_girls
;

SELECT
    SUM(length) AS 'album_length', 
    album
FROM 
    spice_girls
GROUP BY 
    album
;

SELECT
    album,
    SUM(length) AS 'album_length', 
    AVG(length) AS 'average_song_length',
    COUNT(length) AS 'number_of_songs',
    MIN(length) AS 'shortest_song_length',
    MAX(length) AS 'longest_song_length'
FROM 
    spice_girls
GROUP BY 
    album
ORDER BY 
    album
;
