-- String Data Types in MySQL

-- CHAR: A fixed-length string. Length: 0 to 255 characters.
-- Use when all stored strings are of the same length.
CREATE TABLE example_char (
    id INT AUTO_INCREMENT,
    code CHAR(5) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_char (code) VALUES ('ABCDE'), ('12345');


-- VARCHAR: A variable-length string. Length: 0 to 65,535 characters (depending on row size).
-- VARCHAR can be indexed and is more efficient than CHAR for shorter strings.
-- Use for strings of varying length.
CREATE TABLE example_varchar (
    id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_varchar (name) VALUES ('Alice'), ('Bob');


-- TEXT: A large text string. Length: Up to 65,535 characters. (64KB)
-- MEDIUMTEXT: Length: Up to 16,777,215 characters.(16MB)
-- LONGTEXT: Length: Up to 4,294,967,295 characters.(4GB)
-- TINYTEXT: Length: Up to 255 characters. (256 bytes)
CREATE TABLE example_text (
    id INT AUTO_INCREMENT,
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_text (description) VALUES ('This is a long description.'), ('Another example description.');


-- BLOB: A binary large object. Length: Up to 65,535 bytes. (64KB)
-- Use for storing binary data like images or files. 
CREATE TABLE example_blob (
    id INT AUTO_INCREMENT,
    data BLOB NOT NULL,
    PRIMARY KEY (id)
);
-- Example usage would involve inserting binary data, often via applications.


-- ENUM: A string object with a predefined set of values. Only one value can be chosen.
-- Use for columns with limited predefined options.
CREATE TABLE example_enum (
    id INT AUTO_INCREMENT,
    status ENUM('active', 'inactive', 'pending') NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_enum (status) VALUES ('active'), ('pending');


-- SET: A string object that can hold zero or more predefined values.
-- Use for columns where multiple options can be selected.
CREATE TABLE example_set (
    id INT AUTO_INCREMENT,
    permissions SET('read', 'write', 'execute') NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO example_set (permissions) VALUES ('read,write'), ('write,execute');
