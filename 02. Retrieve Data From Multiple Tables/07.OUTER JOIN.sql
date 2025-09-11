USE sql_store;

-- LEFT OUTER JOIN (LEFT JOIN)
-- 1. Retrieve all customers, with or without orders
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id
ORDER BY c.customer_id;

-- RIGHT OUTER JOIN (RIGHT JOIN)
-- 2. Retrieve all customers, with or without matching orders.
SELECT c.customer_id, c.first_name, o.order_id
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id
ORDER BY c.customer_id;

-- Note: OUTER JOINs include unmatched rows from one or both tables.