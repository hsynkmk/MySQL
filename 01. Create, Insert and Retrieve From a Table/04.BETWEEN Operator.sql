use sql_store;

-- The BETWEEN operator is used to filter values within a range (inclusive)
-- Syntax: column_name BETWEEN lower_value AND upper_value
-- Note: Both lower and upper values are INCLUDED in the results

-- 1. Using BETWEEN with numbers
-- Find customers with points between 1000 and 3000 (inclusive)
SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;

-- The above is equivalent to:
SELECT *
FROM customers
WHERE points >= 1000 AND points <= 3000;

-- 2. Using BETWEEN with dates
-- Find customers born in the 1990s
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '1999-12-31';

-- 3. Using BETWEEN with NOT
-- Find customers with points outside the range 1000-3000
SELECT *
FROM customers
WHERE points NOT BETWEEN 1000 AND 3000;

-- 4. Using BETWEEN with prices
-- Find orders with total amount between $100 and $500
SELECT 
    order_id,
    customer_id,
    total_amount
FROM orders
WHERE total_amount BETWEEN 100 AND 500;

-- Note: BETWEEN operator advantages:
-- - More readable than using >= AND <=
-- - Inclusive of both end values
-- - Works with numbers, dates, and characters
-- - Can be combined with NOT for inverse ranges
