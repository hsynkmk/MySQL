use sql_store;

-- The LIKE operator is used for pattern matching in strings
-- Two wildcards are available:
-- % : Matches any sequence of characters (including zero characters)
-- _ : Matches exactly one character

-- 1. Basic pattern matching with %
-- Find customers whose last name starts with 'b'
SELECT *
FROM customers
WHERE last_name LIKE 'b%';

-- Find customers whose last name contains 'b' anywhere
SELECT *
FROM customers
WHERE last_name LIKE '%b%';

-- Find customers whose last name ends with 'y'
SELECT *
FROM customers
WHERE last_name LIKE '%y';

-- 2. Fixed-length pattern matching with _
-- Find customers whose last name is exactly 5 characters and ends with 'y'
SELECT *
FROM customers
WHERE last_name LIKE '_____y';

-- Find customers whose last name starts with 'b', ends with 'y', 
-- and has exactly 4 characters between
SELECT *
FROM customers
WHERE last_name LIKE 'b____y';

-- 3. Combining patterns
-- Find customers whose address contains either 'trail' or 'avenue'
SELECT *
FROM customers
WHERE address LIKE '%trail%' 
   OR address LIKE '%avenue%';

-- 4. Case sensitivity (depends on database configuration)
-- Find customers whose last name contains 'B' or 'b'
SELECT *
FROM customers
WHERE last_name LIKE '%B%'
   OR last_name LIKE '%b%';

-- Note: LIKE operator tips:
-- - % matches any number of characters (including zero)
-- - _ matches exactly one character
-- - Case sensitivity depends on database settings
-- - Can be combined with NOT for inverse matching
-- - Use with caution on large datasets (performance impact)
-- - Consider REGEXP for more complex pattern matching