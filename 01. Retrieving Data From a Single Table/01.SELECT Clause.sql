USE sql_store;

-- Select all data
SELECT *
FROM customers;


-- Select all data order by first_name
SELECT *
FROM customers
ORDER BY first_name;


-- Select specific colums
SELECT
	first_name,
	last_name,
    points,
    points + 10,
    points + 20 AS plus_20,  -- Alias column name
	points + 30 AS "plus 20" -- If we want to add a space, we need to use double quotes
FROM customers;


-- Select unique list of selected column
SELECT DISTINCT state
FROM customers;