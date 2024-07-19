USE sql_store;

-- USING Clause
SELECT o.order_id, c.first_name
FROM orders o
JOIN customers c USING (customer_id)	-- Same as ON o.customer_id = c.customer_id