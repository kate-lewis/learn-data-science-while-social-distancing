CREATE TABLE walking_dead(
    first_name varchar(255),
    last_name varchar(255),
    hair_colour varchar(255),
    walker_kills int(255),
    human_kills int(255),
    number_of_hands int(255)
);
INSERT INTO walking_dead (first_name, last_name, hair_colour, walker_kills, human_kills, number_of_hands)
VALUES
    ('Maggie', 'Greene', 'brown', 64, 5, 2),
    ('Carol', 'Peletier', 'grey', 57, 27, 2),
    ('Merle', 'Dixon', 'dark blonde', 20, 6, 1),
    ('Tyreese', 'Williams', 'black', 59, 0, 2),
    ('Morgan', 'Jones', 'black', 40, 3, 2),
    ('Glenn', 'Rhee', 'black', 185, 5, 2),
    ('Michonne', '', 'black', 141, 10, 2),
    ('Andrea', 'Harrison', 'blonde', 39, 0, 2),
    ('Sasha', 'Williams', 'black', 73, 4, 2),
    ('Abraham', 'Ford', 'red', 49, 4, 2),
    ('Shane', 'Walsh', 'brown', 28, 3, 2),
    ('Daryl', 'Dixon', 'brown', 185, 22, 2),
    ('Rick', 'Grimes', 'brown', 216, 35, 2),
    ('Philip “The Governor”', 'Blake', 'brown', 26, 30, 2)
;

SELECT
    hair_colour, 
    number_of_hands
FROM
    walking_dead
ORDER BY
    hair_colour ASC, number_of_hands DESC;
    
SELECT DISTINCT
    hair_colour, 
    number_of_hands
FROM
    walking_dead
ORDER BY
    hair_colour ASC, number_of_hands DESC;
    
SELECT
    first_name, 
    human_kills
FROM
    walking_dead
ORDER BY
    human_kills DESC
LIMIT 10;

SELECT
    first_name, 
    human_kills
FROM
    walking_dead
ORDER BY
    first_name ASC
LIMIT 10;
