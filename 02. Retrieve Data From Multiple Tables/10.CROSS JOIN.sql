USE sql_store;

-- CROSS JOIN
-- 1. Produce a Cartesian product of two tables
SELECT c.first_name AS customer, p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name;

-- Equivalent implicit join (not recommended)
SELECT c.first_name AS customer, p.name AS product
FROM customers c, products p
ORDER BY c.first_name;

-- Note: CROSS JOIN returns all possible combinations of rows from both tables.