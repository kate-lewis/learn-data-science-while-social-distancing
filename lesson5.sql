CREATE TABLE magpie_attacks(
    state_code varchar(255),
    state_name varchar(255),
    animal varchar(255),
    number_of_attacks int(255)
);
INSERT INTO magpie_attacks(
    state_code,
    state_name,
    animal,
    number_of_attacks
)
VALUES
    ('SA', 'South Australia', 'magpie', 154),
    ('VIC', 'Victoria', 'magpie', 972),
    ('TAS', 'Tasmania', 'magpie', 0),
    ('NSW', 'New South Whales', 'magpie', 823),
    ('QLD', 'Queensland', 'magpie', 1141),
    ('WA', 'Western Australia', 'magpie', 287),
    ('ACT', 'Australian Capital Territory', 'magpie', 668)
;
CREATE TABLE dropbear_attacks(
    state_code varchar(255),
    state_name varchar(255),
    animal varchar(255),
    number_of_attacks int(255)
);
INSERT INTO dropbear_attacks(
    state_code,
    state_name,
    animal,
    number_of_attacks
)
VALUES
    ('SA', 'South Australia', 'dropbear', 21),
    ('VIC', 'Victoria', 'dropbear', 67),
    ('TAS', 'Tasmania', 'dropbear', 30),
    ('NSW', 'New South Whales', 'dropbear', 19),
    ('QLD', 'Queensland', 'dropbear', 40),
    ('WA', 'Western Australia', 'dropbear', 37)
;
CREATE TABLE australian_states(
    state_code varchar(255),
    state_name varchar(255),
    population int(255),
    area_km2 int(255)
);
INSERT INTO australian_states(
    state_code,
    state_name,
    population,
    area_km2
)
VALUES
    ('SA', 'South Australia', 1751693, 1044353),
    ('VIC', 'Victoria', 6594804, 237657),
    ('TAS', 'Tasmania', 534281, 90758),
    ('NSW', 'New South Whales', 8089526, 809952),
    ('QLD', 'Queensland', 5095100, 1851736),
    ('WA', 'Western Australia', 2621680, 2642753),
    ('ACT', 'Australian Capital Territory', 426709, 2358),
    ('NT', 'Northern Territory', 245869, 1419630)
;

    SELECT 
        * 
    FROM
        magpie_attacks
UNION
    SELECT 
        *
    FROM 
        dropbear_attacks
;

    SELECT 
        state_code, 
        state_name
    FROM
        magpie_attacks
UNION
    SELECT 
        state_code, 
        state_name
    FROM 
        dropbear_attacks
;

    SELECT 
        state_code, 
        state_name
    FROM
        magpie_attacks
UNION ALL
    SELECT 
        state_code, 
        state_name
    FROM 
        dropbear_attacks;
        
 SELECT 
    magpie_attacks.state_code, 
    magpie_attacks.number_of_attacks AS magpie_attacks,
    dropbear_attacks.number_of_attacks AS dropbear_attacks
FROM
    magpie_attacks
INNER JOIN
    dropbear_attacks
ON
    magpie_attacks.state_code = dropbear_attacks.state_code;
    
SELECT 
    magpie_attacks.state_code, 
    magpie_attacks.number_of_attacks AS magpie_attacks,
    dropbear_attacks.number_of_attacks AS dropbear_attacks
FROM
    magpie_attacks
LEFT OUTER JOIN
    dropbear_attacks
ON
    magpie_attacks.state_code = dropbear_attacks.state_code;
    
SELECT 
    magpie_attacks.state_code, 
    magpie_attacks.number_of_attacks AS magpie_attacks,
    dropbear_attacks.number_of_attacks AS dropbear_attacks
FROM
    magpie_attacks
RIGHT OUTER JOIN
    dropbear_attacks
ON
    magpie_attacks.state_code = dropbear_attacks.state_code;
    
SELECT 
    magpie_attacks.state_code, 
    magpie_attacks.number_of_attacks AS magpie_attacks,
    dropbear_attacks.number_of_attacks AS dropbear_attacks,
      dropbear_attacks.number_of_attacks / magpie_attacks.number_of_attacks * 100 AS 'dropbear_attacks_as_percentage_of_magpie_attacks'
FROM
    magpie_attacks
INNER JOIN
    dropbear_attacks
ON
    magpie_attacks.state_code = dropbear_attacks.state_code
;
