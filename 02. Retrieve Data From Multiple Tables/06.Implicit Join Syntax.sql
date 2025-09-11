USE sql_store;

-- Explicit vs. Implicit Join Syntax
-- 1. Implicit join (old style)
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

-- 2. Explicit join (recommended)
SELECT *
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Note: Use explicit JOIN syntax for clarity and maintainability.