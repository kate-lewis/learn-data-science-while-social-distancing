CREATE TABLE charmed(
    first_name varchar(255),
    last_name varchar(255),
    power varchar(255),
    power_type varchar(255),
    power_revealed date
);
INSERT INTO charmed(
    first_name,
    last_name,
    power,
    power_type,
    power_revealed
)
VALUES
    ('Phoebe', 'Halliwell', 'premonition', 'passive', '1998-10-07'),
    ('Piper', 'Halliwell', 'freeze time', 'active', '1998-10-07'),
    ('Prue', 'Halliwell', 'telekenesis', 'active', '1998-10-07'),
    ('Prue', 'Halliwell', 'astral projection', 'active', '2000-01-13'),
    ('Leo', 'Wyatt', 'healing', 'active', '1999-02-17'),
    ('Leo', 'Wyatt', 'orbing', 'active', '1999-02-17'),    
    ('Paige', 'Matthews', 'orbing', 'active', '2001-10-04'),
    ('Phoebe', 'Halliwell', 'levitation', 'active', '2000-10-05'),
    ('Piper', 'Halliwell', 'molecular combustion', 'active', '2001-05-03')
;

SELECT 
    *
FROM
    charmed
WHERE
    power_type = 'active'
;

SELECT 
    *
FROM
    charmed
WHERE
    power_type = 'active'
AND
    power_revealed!='1998-10-07'
;

SELECT 
    *
FROM
    charmed
WHERE
    power_type = 'active'
OR
    power_revealed!='1998-10-07'
;

SELECT 
    *
FROM
    charmed
WHERE
    first_name LIKE 'P%'
;

SELECT 
    *
FROM
    charmed
WHERE
    power IN ('orbing', 'healing')
;

SELECT 
    *
FROM
    charmed
WHERE
    first_name NOT IN (SELECT 
                           first_name
                       FROM
                           charmed
                       WHERE
                           first_name LIKE 'P%')
;

SELECT 
    *
FROM
    charmed
WHERE
    first_name NOT LIKE 'P%'
;

SELECT 
    *
FROM
    charmed
WHERE
    power_revealed BETWEEN '1999-01-01' AND '2000-12-31'
;

SELECT 
    *
FROM
    charmed
WHERE
    power BETWEEN 'astral projection' AND 'healing'
;
