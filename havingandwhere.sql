CREATE TABLE vampires_slain (
    name varchar(255),
    hellmouth_category varchar(255),
    slay_count int
);
INSERT INTO vampires_slain (name, hellmouth_category, slay_count)
VALUES
    ('Buffy', 'slayer', 104),
    ('Willow', 'civilian', 65),
    ('Xander', 'civilian', 89),
    ('Buffy', 'slayer', 886),
    ('Angel', 'vampire', 1397),
    ('Giles', 'watcher', 673),
    ('Kendra', 'slayer', 1260),
    ('Spike', 'vampire', 1108),
    ('Faith', 'slayer', 1421),
    ('Buffy', 'slayer', 957)
;

select *
from
vampires_slain
where
slay_count > 1000
order by 
slay_count desc;

select name, hellmouth_category, sum(slay_count)
from
vampires_slain
group by 
name
having
sum(slay_count)>1000
order by sum(slay_count) desc;
