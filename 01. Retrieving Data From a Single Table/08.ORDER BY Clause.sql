use sql_store;

-- ORDER BY clause is used to sort the result set based on one or more columns
SELECT *
FROM customers
ORDER BY first_name;


-- Reverse Order
SELECT *
FROM customers
ORDER BY first_name DESC;

-- Multiple Columns
SELECT *
FROM customers
ORDER BY state DESC, first_name ASC;

-- Using Column Position
SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY birth_date, points;