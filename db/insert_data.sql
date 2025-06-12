-- insert birds
INSERT INTO bird (common_name, scientific_name) VALUES
('Northern Cardinal', 'Cardinalis cardinalis'),
('American Goldfinch', 'Spinus tristis'),
('Blue Jay', 'Cyanocitta cristata'),
('Mallard', 'Anas platyrhynchos'),
('Ruby-throated Hummingbird', 'Archilochus colubris'),
('Great Blue Heron', 'Ardea herodias'),
('Eastern Bluebird', 'Sialia sialis'),
('Red-winged Blackbird', 'Agelaius phoeniceus');

-- insert colors
INSERT INTO color (name) VALUES
('Red'),
('Yellow'),
('Blue'),
('Green'),
('Brown'),
('White'),
('Black'),
('Gray');

-- insert habitats
INSERT INTO habitat (name) VALUES
('Woodlands'),
('Grasslands'),
('Wetlands'),
('Urban Areas'),
('Marshes'),
('Open Fields');

-- birds to colors
INSERT INTO bird_color (bird_id, color_id) VALUES
(1, 1), -- Cardinal - red
(2, 2), -- Goldfinch - yellow
(3, 3), -- Blue Jay - blue
(4, 5), -- Mallard - brown
(4, 6), -- Mallard - white
(5, 1), -- Hummingbird - red
(5, 3), -- Hummingbird - blue
(6, 8), -- Heron - gray
(6, 6), -- Heron - white
(7, 3), -- Bluebird - blue
(7, 2), -- Bluebird - yellow
(8, 1), -- Blackbird - red
(8, 7); -- Blackbird - black

-- birds to habitats
INSERT INTO bird_habitat (bird_id, habitat_id) VALUES
(1, 1), -- Cardinal - Woodlands
(2, 2), -- Goldfinch - Grasslands
(3, 1), -- Blue Jay - Woodlands
(3, 4), -- Blue Jay - Urban Areas
(4, 3), -- Mallard - Wetlands
(5, 1), -- Hummingbird - Woodlands
(5, 4), -- Hummingbird - Urban Areas
(6, 3), -- Heron - Wetlands
(6, 5), -- Heron - Marshes
(7, 2), -- Bluebird - Grasslands
(7, 6), -- Bluebird - Open Fields
(8, 5), -- Blackbird - Marshes
(8, 6); -- Blackbird - Open Fields
