-- Using the sql_store database
USE sql_store;

-- 1. Basic SELECT: Retrieve all columns (*) from a table
-- The asterisk (*) means "all columns"
SELECT *
FROM customers;

-- 2. SELECT with ORDER BY: Retrieve all data sorted by first_name
-- ORDER BY arranges the results in ascending order by default
SELECT *
FROM customers
ORDER BY first_name;

-- 3. SELECT specific columns with calculations and aliases
-- Demonstrates column selection, arithmetic operations, and column aliasing
SELECT
	first_name,
	last_name,
    points,                     -- Original column
    points + 10,               -- Simple arithmetic
    points + 20 AS plus_20,    -- Using AS for column alias
    points + 30 AS "plus 30"   -- Alias with space requires double quotes
FROM customers;

-- 4. SELECT DISTINCT: Remove duplicates from results
-- Useful when you only want to see unique values in a column
SELECT DISTINCT state
FROM customers
ORDER BY state;  -- Added ORDER BY for better readability

-- Note: The SELECT clause is the foundation of all SQL queries.
-- It can be combined with various clauses like WHERE, GROUP BY, HAVING, etc.
-- to create more complex queries.