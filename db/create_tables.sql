DROP TABLE IF EXISTS bird_color;
DROP TABLE IF EXISTS bird_habitat;
DROP TABLE IF EXISTS bird;
DROP TABLE IF EXISTS habitat;
DROP TABLE IF EXISTS color;


CREATE TABLE bird (
    id INT AUTO_INCREMENT PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
)

CREATE TABLE color (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
)

CREATE TABLE habitat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
)

-- many-to-many btwn bird/color
CREATE TABLE bird_color (
    bird_id INT NOT NULL,
    color_id INT NOT NULL,
    PRIMARY KEY (bird_id, color_id),
    FOREIGN KEY (bird_id) REFERENCES bird(id),
    FOREIGN KEY (color_id) REFERENCES color(id)
)

-- many-to-many btwn bird/habitat
CREATE TABLE bird_habitat (
    bird_id INT NOT NULL,
    habitat_id INT NOT NULL,
    PRIMARY KEY (bird_id, habitat_id),
    FOREIGN KEY (bird_id) REFERENCES bird(id),
    FOREIGN KEY (habitat_id) REFERENCES habitat(id)
)
