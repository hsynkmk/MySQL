-- JSON Data Type in MySQL

-- JSON: A data type for storing JSON (JavaScript Object Notation) documents.
-- Use for semi-structured data.
CREATE TABLE example_json (
    id INT AUTO_INCREMENT,
    details JSON NOT NULL,
    PRIMARY KEY (id)
);
-- Insert JSON data into the table.
INSERT INTO example_json (details) VALUES ('{"name": "Alice", "age": 25, "skills": ["SQL", "Python"]}');
SELECT id, JSON_EXTRACT(details, '$.name') AS name, JSON_EXTRACT(details, '$.age') AS age FROM example_json;


-- Use JSON functions like JSON_CONTAINS, JSON_ARRAY, and JSON_OBJECT for manipulation.
-- Example: Check if JSON contains a specific value.
SELECT id FROM example_json WHERE JSON_CONTAINS(details, '"SQL"', '$.skills');

-- Example: update JSON data.
UPDATE example_json SET details = JSON_SET(details, '$.age', 26) WHERE id = 1;
SELECT id, JSON_EXTRACT(details, '$.age') AS age FROM example_json;

-- Example: add a new key-value pair to JSON data.
UPDATE example_json SET details = JSON_SET(details, '$.location', 'USA') WHERE id = 1;
SELECT id, details FROM example_json;

-- Example: create a new JSON object.
INSERT INTO example_json (details) VALUES (JSON_OBJECT('name', 'Bob', 'age', 30));
SELECT id, details FROM example_json;

-- Example: create a new JSON array.
INSERT INTO example_json (details) VALUES (JSON_ARRAY('Apple', 'Banana', 'Cherry'));
SELECT id, details FROM example_json;

-- Example: extract a specific value from a JSON array.
SELECT id, JSON_EXTRACT(details, '$[1]') AS fruit FROM example_json;

