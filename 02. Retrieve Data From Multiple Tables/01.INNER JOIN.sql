use sql_store;

/*
INNER JOIN returns rows when there is a match in both tables.
It's the default join type when only JOIN is specified.
*/

-- 1. Basic INNER JOIN
-- Retrieve order details with customer names
SELECT order_id, first_name, last_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Note: INNER JOIN is used to combine rows from two or more tables
-- based on a related column between them.
