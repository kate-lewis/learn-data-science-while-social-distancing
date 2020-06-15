CREATE TABLE bluey_nerds (
    name varchar(255),
    occupation varchar(255),
    number_of_children int(255)
);
INSERT INTO bluey_nerds (name, occupation, number_of_children)
VALUES
    ('Sharalanda', 'accountant', 1),
    ('Dennis', 'lawyer', 1),
    ('Janet', 'analytical chemist', 0),
    ('Rita', 'scientist', 3)
;

SELECT * 
FROM bluey_nerds;
