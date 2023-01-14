USE sql_store;

INSERT INTO customers
VALUES (DEFAULT, 'John', 'Smith', '1999-01-01', NULL, 'Turkey', 'Eskişehir', 'AA', DEFAULT);

INSERT INTO customers (first_name, last_name, birth_date, address, city, state)
VALUES ('John', 'Smith', '1999-12-14', 'Turkey', 'Eskişehir', 'AA');