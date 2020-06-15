CREATE TABLE charms_class (
    student_name varchar(255),
    charms_grade varchar(255)
);
INSERT INTO charms_class (student_name, charms_grade)
VALUES
    ('Harry', 'C'),
    ('Ron', 'D'),
    ('Hermione', 'A'),
    ('Luna', 'B'),
    ('Neville', 'B')
;
CREATE TABLE potions_class (
    student_name varchar(255),
    potions_grade varchar(255)
);
INSERT INTO potions_class (student_name, potions_grade)
VALUES 
    ('Harry', 'A'),
    ('Ron', 'C'),
    ('Hermione', 'B'),
    ('Ginny', 'A'),
    ('Draco', 'D')
;

select * 
from 
charms_class INNER JOIN potions_class 
on 
charms_class.student_name=potions_class.student_name;

select * 
from 
charms_class FULL OUTER JOIN potions_class 
on 
charms_class.student_name=potions_class.student_name;

select * 
from 
charms_class LEFT OUTER JOIN potions_class 
on 
charms_class.student_name=potions_class.student_name;

select * 
from 
charms_class RIGHT OUTER JOIN potions_class 
on 
charms_class.student_name=potions_class.student_name;
