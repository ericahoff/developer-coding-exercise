
-- birds
INSERT INTO bird (common_name, scientific_name) VALUES
('Northern Cardinal', 'Cardinalis cardinalis'),
('Blue Jay', 'Cyanocitta cristata'),
('Mallard', 'Anas platyrhynchos'),
('Ruby-throated Hummingbird', 'Archilochus colubris'),
('Great Blue Heron', 'Ardea herodias'),
('Eastern Bluebird', 'Sialia sialis'),
('Red-winged Blackbird', 'Agelaius phoeniceus'),
('American Robin', 'Turdus migratorius'),
('Killdeer', 'Charadrius vociferus'),
('Wood Duck', 'Aix sponsa');

-- habitats
INSERT INTO habitat (name) VALUES
('Woodlands'),
('Grasslands'),
('Wetlands'),
('Urban Areas'),
('Marshes'),
('Open Fields'),
('Shrublands'),
('Lakeshores');

-- bird to habitat 
INSERT INTO bird_habitat (bird_id, habitat_id) VALUES
(1, 1), (1, 4),                -- Cardinal: woodlands, ua
(2, 1), (2, 4),                -- Blue Jay: woodlands, ua
(3, 3), (3, 8),                -- Mallard: wetlands, lakes
(4, 1), (4, 4),                -- Hummingbird: woodlands, ua
(5, 3), (5, 5), (5, 8),        -- Heron: wetlands, marshes, lakes
(6, 2), (6, 6),                -- Bluebird: grasslands, open fields
(7, 5), (7, 6),                -- Blackbird: marshes, open fields
(8, 1), (8, 4), (8, 7),        -- Robin: woodlands, ua, shrublands
(9, 2), (9, 6), (9, 8),        -- Killdeer: grasslands, fields, lakes
(10, 3), (10, 8), (10, 1);     -- Wood Duck: wetlands, lakes, woodlands

