-- Date and Time Data Types in MySQL

-- DATE: A date value. Format: 'YYYY-MM-DD'.
-- Use for storing dates only.
CREATE TABLE example_date (
    id INT AUTO_INCREMENT,
    birth_date DATE NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_date (birth_date) VALUES ('2000-01-01'), ('1995-12-25');


-- DATETIME: A date and time value. Format: 'YYYY-MM-DD HH:MM:SS'.
-- Use for storing precise timestamps.
CREATE TABLE example_datetime (
    id INT AUTO_INCREMENT,
    event_time DATETIME NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_datetime (event_time) VALUES ('2025-01-01 12:00:00'), ('2024-12-31 23:59:59');


-- TIMESTAMP: A date and time value with automatic timezone adjustment.
-- Use for tracking changes with automatic updates. up to 2038.
CREATE TABLE example_timestamp (
    id INT AUTO_INCREMENT,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
INSERT INTO example_timestamp () VALUES ();


-- TIME: A time value. Format: 'HH:MM:SS'.
-- Use for storing time of day without date.
CREATE TABLE example_time (
    id INT AUTO_INCREMENT,
    opening_time TIME NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_time (opening_time) VALUES ('08:00:00'), ('23:59:59');


-- YEAR: A year value. Format: 'YYYY'.
-- Use for storing year-only values.
CREATE TABLE example_year (
    id INT AUTO_INCREMENT,
    year_established YEAR NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_year (year_established) VALUES (1999), (2025);
SELECT * FROM example_year;
