use sql_store;

-- The IN operator allows you to specify multiple values in a WHERE clause
-- It's a shorthand for multiple OR conditions
-- Syntax: column_name IN (value1, value2, ...)

-- 1. Basic IN operator usage
-- Find customers from Virginia, Florida, or Georgia
SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA');

-- 2. Using NOT IN
-- Find customers from all states EXCEPT Virginia, Florida, or Georgia
SELECT *
FROM customers
WHERE state NOT IN ('VA', 'FL', 'GA');

-- 3. Using IN with numbers
-- Find customers with specific point values
SELECT *
FROM customers
WHERE points IN (1000, 2000, 3000);

-- The IN operator is equivalent to multiple OR conditions
-- These two queries are identical:

-- Using IN operator (preferred)
SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA');

-- Using multiple OR conditions (more verbose)
SELECT *
FROM customers
WHERE state = 'VA' 
   OR state = 'FL' 
   OR state = 'GA';

-- Note: IN operator is:
-- - More readable than multiple OR conditions
-- - Easier to maintain
-- - Often performs better
-- - Can be used with subqueries (covered later)