-- Numeric Data Types in MySQL

-- TINYINT: A very small integer. Range: -128 to 127 (signed), 0 to 255 (unsigned).
-- Use when storing small numbers, e.g., age range or flags.
CREATE TABLE example_tinyint (
    id TINYINT NOT NULL AUTO_INCREMENT,
    age TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_tinyint (age) VALUES (25), (18), (75);


-- SMALLINT: A small integer. Range: -32,768 to 32,767 (signed), 0 to 65,535 (unsigned).
-- Useful for larger ranges but not requiring full INT.
CREATE TABLE example_smallint (
    id SMALLINT NOT NULL AUTO_INCREMENT,
    year SMALLINT NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_smallint (year) VALUES (1990), (2025);


-- MEDIUMINT: A medium-sized integer. Range: -8,388,608 to 8,388,607 (signed), 0 to 16,777,215 (unsigned).
-- Ideal for larger numerical values that don't fit SMALLINT.
CREATE TABLE example_mediumint (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    score MEDIUMINT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_mediumint (score) VALUES (5000000), (16777215);


-- INT / INTEGER: A standard integer. Range: -2,147,483,648 to 2,147,483,647 (signed), 0 to 4,294,967,295 (unsigned).
-- Most commonly used numeric type.
CREATE TABLE example_int (
    id INT NOT NULL AUTO_INCREMENT,
    population INT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_int (population) VALUES (1000000), (2000000000);


-- BIGINT: A very large integer. Range: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 (signed), 0 to 18,446,744,073,709,551,615 (unsigned).
-- Use for very large numbers like financial transactions.
CREATE TABLE example_bigint (
    id BIGINT NOT NULL AUTO_INCREMENT,
    national_debt BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_bigint (national_debt) VALUES (9223372036854775807), (100000000000000);


-- DECIMAL / NUMERIC: Fixed-point precision numbers. Precision and scale are user-defined.
-- Suitable for financial or high-accuracy applications.
CREATE TABLE example_decimal (
    id INT AUTO_INCREMENT,
    price DECIMAL(10, 2) NOT NULL, -- Up to 10 digits, 2 after the decimal point
    PRIMARY KEY (id)
);
INSERT INTO example_decimal (price) VALUES (19.99), (12345678.90);


-- FLOAT: Approximate single-precision floating-point numbers.
-- Use when small floating-point values are acceptable.
CREATE TABLE example_float (
    id INT AUTO_INCREMENT,
    temperature FLOAT NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_float (temperature) VALUES (36.6), (-273.15);


-- DOUBLE / REAL: Approximate double-precision floating-point numbers.
-- Use when larger precision is required.
CREATE TABLE example_double (
    id INT AUTO_INCREMENT,
    distance DOUBLE NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_double (distance) VALUES (123456789.123456), (1.234567890123456);


-- BIT: A bit-field type. Length is user-defined.
-- Use for storing binary data or flags.
CREATE TABLE example_bit (
    id INT AUTO_INCREMENT,
    flags BIT(8) NOT NULL, -- 8 bits
    PRIMARY KEY (id)
);
INSERT INTO example_bit (flags) VALUES (B'10101010'), (B'11110000');


-- BOOLEAN: A synonym for TINYINT(1). Range: 0 to 1.
-- Use for storing true/false or yes/no values.
CREATE TABLE example_boolean (
    id INT AUTO_INCREMENT,
    is_active BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_boolean (is_active) VALUES (TRUE), (FALSE);
