use sql_store;

-- ORDER BY clause for sorting results
-- 1. Sort by first name (ascending)
SELECT *
FROM customers
ORDER BY first_name;

-- 2. Sort by first name (descending)
SELECT *
FROM customers
ORDER BY first_name DESC;

-- 3. Sort by multiple columns
-- First by state (descending), then by first name (ascending)
SELECT *
FROM customers
ORDER BY state DESC, first_name ASC;

-- 4. Sort using column position
-- Sort by birth_date, then by points
SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY birth_date, points;

-- Note: Default sort order is ascending (ASC), use DESC for descending