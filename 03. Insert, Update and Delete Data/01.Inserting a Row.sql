USE sql_store;

-- INSERT a new row into the customers table
-- 1. Insert with all columns
INSERT INTO customers
VALUES (DEFAULT, 'John', 'Smith', '1999-01-01', NULL, 'Turkey', 'Eskişehir', 'AA', DEFAULT);

-- 2. Insert with specific columns
INSERT INTO customers (first_name, last_name, birth_date, address, city, state)
VALUES ('John', 'Smith', '1999-12-14', 'Turkey', 'Eskişehir', 'AA');

-- Note: Use DEFAULT for auto-increment columns or when you want to use default values.