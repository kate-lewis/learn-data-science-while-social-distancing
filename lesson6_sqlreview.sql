CREATE TABLE art_materials(
    material_name varchar(255),
    material_type varchar(255),
    material_subtype varchar(255),
    cost float
);
INSERT INTO art_materials(
    material_name,
    material_type,
    material_subtype,
    cost
)
VALUES
    ('golden acrylic paint', 'paint', 'acrylic', 0.5),
    ('schmincke horadam watercolour paint', 'paint', 'watercolour', 0.2),
    ('resin', 'other', 'epoxy resin', 1)
;
CREATE TABLE art_surfaces(
    surface_name varchar(255),
    surface_type varchar(255),
    surface_subtype varchar(255),
    size_category varchar(255),
    size_m2 float,
    cost_dollars int(255)
);
INSERT INTO art_surfaces(
    surface_name,
    surface_type,
    surface_subtype,
    size_category,
    size_m2,
    cost_dollars
)
VALUES
    ('square stretched canvas medium', 'canvas', 'stretched canvas', 'medium', 0.36, 30),
    ('rectangle stretched canvas medium', 'canvas', 'stretched canvas', 'medium', 0.2, 25),
    ('rectangle stretched canvas large', 'canvas', 'stretched canvas', 'large', 0.35, 50),
    ('square stretched canvas large', 'canvas', 'stretched canvas', 'large', 1, 60),
    ('rectangular canvas pad medium', 'canvas', 'canvas pad', 'medium', 0.12, 7),
    ('rectangular watercolour canvas pad medium', 'canvas', 'canvas pad', 'medium', 0.12, 10),
    ('wooden artist panel', 'wooden panel', 'wooden panel', 'medium', 0.25, 40),
    ('300g/m2 Canson Heritage 100% cotton watercolour paper', 'paper', 'watercolour paper', 'small', 0.09, 5),
    ('300g/m2 Canson Moulin du Roy 100% cotton watercolour paper', 'paper', 'watercolour paper', 'medium', 0.12, 8)
;
CREATE TABLE artist_time(
    hours int(255),
    price int
);
INSERT INTO artist_time(
    hours,
    price
)
VALUES
    (3, 120),
    (4, 160),
    (6, 240),
    (8, 320),
    (12, 480),
    (24, 960),
    (36, 1440),
    (72, 2880)
;

SELECT
    material_name
FROM
    art_materials
WHERE 
    material_type != 'paint'
;
SELECT DISTINCT 
    surface_subtype
FROM
    art_surfaces
WHERE 
    surface_type LIKE '%vas'
;
SELECT DISTINCT 
    price
FROM
    artist_time
WHERE 
    hours BETWEEN 6 AND 24
;

SELECT
    material_type, 
    AVG(cost) AS 'mean_material_cost'
FROM
    art_materials
GROUP BY 
    material_type
;
SELECT
    size_category, 
    COUNT(surface_name) AS 'number_of_different_surfaces'
FROM
    art_surfaces
GROUP BY 
    size_category
;
SELECT DISTINCT
    price/hours AS 'price_per_hour'
FROM
    artist_time
;

SELECT
        material_name AS 'name',
        material_type AS 'type', 
        material_subtype AS 'subtype'
    FROM
        art_materials
UNION
    SELECT
        surface_name AS 'name',
        surface_type AS 'type', 
        surface_subtype AS 'subtype'
    FROM
        art_surfaces
;

CREATE TABLE materials_cost
AS
SELECT
    cost AS 'paint_cost'
FROM
    art_materials
WHERE 
    material_type = 'paint'
AND
    material_subtype = 'acrylic'
;

CREATE TABLE surface_cost
AS
SELECT
    AVG(cost_dollars) AS 'surface_cost_estimate',
    AVG(size_m2) AS 'size_estimate_m2'
FROM
    art_surfaces
WHERE 
    size_category = 'medium'
AND
    surface_type = 'canvas'
AND
    surface_subtype = 'stretched canvas'
;

CREATE TABLE time_cost
AS
SELECT 
    price as 'artist_time_cost'
FROM
    artist_time
WHERE
    hours = 8
;
SELECT 
    (SELECT 
         artist_time_cost 
     FROM 
         time_cost)+
    (SELECT 
         surface_cost_estimate 
     FROM 
         surface_cost)+
    ((SELECT 
         paint_cost 
     FROM 
         materials_cost)*
     (SELECT
         size_estimate_m2*100
      FROM
         surface_cost))
;
