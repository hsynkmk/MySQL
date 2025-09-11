use sql_store;

-- The WHERE clause filters data based on specified conditions
-- Available operators: >, >=, <, <=, =, != (or <>)
-- Logical operators: AND, OR, NOT

-- 1. Simple comparison with numbers
-- Find customers with more than 3000 points
SELECT * 
FROM customers
WHERE points > 3000;

-- 2. String comparison
-- Find customers not from Virginia
SELECT *
FROM customers
WHERE state != 'VA';  -- You can also use <> instead of !=

-- 3. Date comparison
-- Find customers born after 1990
SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

-- 4. Complex conditions using AND/OR
-- Find customers either:
-- - born after 1990, OR
-- - having more than 1000 points AND not from Virginia
SELECT *
FROM customers
WHERE birth_date > '1990-01-01' 
   OR (points > 1000 AND state != 'VA');

-- 5. Using NOT operator
-- Find customers born before or in 1990 who have more than 1000 points
-- and are not from Virginia
SELECT *
FROM customers
WHERE NOT birth_date > '1990-01-01' 
  AND points > 1000 
  AND state != 'VA';

-- Note: When combining AND and OR operators, use parentheses
-- to make the order of operations clear and avoid logical errors
