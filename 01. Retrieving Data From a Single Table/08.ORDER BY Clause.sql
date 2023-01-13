use sql_store;

SELECT *
FROM customers
ORDER BY first_name;


-- Reverse Order
SELECT *
FROM customers
ORDER BY first_name DESC;


SELECT *
FROM customers
ORDER BY state DESC, first_name ASC;


SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY birth_date, points;


SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY 1, 2;		-- 1 is first_name and 2 is last_name