USE sql_store;

-- USING Clause
-- 1. Simplify join conditions with USING
SELECT o.order_id, c.first_name
FROM orders o
JOIN customers c USING (customer_id);

-- Note: USING is a shorthand for ON when column names are the same in both tables.