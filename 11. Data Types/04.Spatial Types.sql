-- Spatial Data Types in MySQL

-- POINT: A single location in a 2D space (X and Y coordinates).
CREATE TABLE example_point (
    id INT AUTO_INCREMENT,
    location POINT NOT NULL,
    PRIMARY KEY (id)
);
-- Insert a point value using the ST_GeomFromText function.
INSERT INTO example_point (location) VALUES (ST_GeomFromText('POINT(10 20)'));
SELECT id, ST_AsText(location) AS location FROM example_point;

-- LINESTRING: A set of points forming a line.
CREATE TABLE example_linestring (
    id INT AUTO_INCREMENT,
    route LINESTRING NOT NULL,
    PRIMARY KEY (id)
);
-- Insert a linestring value.
INSERT INTO example_linestring (route) VALUES (ST_GeomFromText('LINESTRING(0 0, 10 10, 20 25)'));
SELECT id, ST_AsText(route) AS route FROM example_linestring;

-- POLYGON: A shape defined by a set of points forming a closed loop.
CREATE TABLE example_polygon (
    id INT AUTO_INCREMENT,
    area POLYGON NOT NULL,
    PRIMARY KEY (id)
);
-- Insert a polygon value.
INSERT INTO example_polygon (area) VALUES (ST_GeomFromText('POLYGON((0 0, 10 0, 10 10, 0 10, 0 0))'));
SELECT id, ST_AsText(area) AS area FROM example_polygon;