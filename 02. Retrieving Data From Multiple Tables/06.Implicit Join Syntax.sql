USE sql_store;

-- Explicit Join Syntax
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

-- Implicit Join Syntax
-- Same as follows (Do not use if it's not necessary)--
SELECT *
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id