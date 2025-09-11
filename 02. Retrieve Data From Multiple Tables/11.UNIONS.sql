USE sql_store;

-- UNION
/*
The UNION operator combines result sets of two or more SELECT statements.
- Each SELECT must have the same number of columns
- Columns must have similar data types
- Columns must be in the same order
*/

-- 1. Combine customer and shipper names
SELECT first_name
FROM customers

UNION

SELECT name
FROM shippers;

-- Note: UNION removes duplicates; use UNION ALL to include duplicates.