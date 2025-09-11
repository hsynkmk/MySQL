use sql_store;

-- IS NULL operator for checking missing values
-- 1. Find customers with no phone number
SELECT *
FROM customers
WHERE phone IS NULL;

-- 2. Find customers with a phone number
SELECT *
FROM customers
WHERE phone IS NOT NULL;

-- Note: IS NULL checks for NULL values, IS NOT NULL checks for non-NULL values