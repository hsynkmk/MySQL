-- Using the sql_store database
USE sql_store;

-- LIMIT clause for controlling result set size
-- 1. Limit to first 3 records
SELECT *
FROM customers
LIMIT 3;

-- 2. Offset and limit
-- Skip first 6 records, then show next 3
SELECT *
FROM customers
LIMIT 6, 3;

-- 3. Limit with ORDER BY
-- Show top 3 customers by points
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;

-- Note: LIMIT is useful for pagination and performance optimization