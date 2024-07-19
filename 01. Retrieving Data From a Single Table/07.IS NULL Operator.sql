use sql_store;

-- IS NULL operator is used to filter the result set based on missing values
SELECT *
FROM customers
WHERE phone IS NULL		-- IS NULL is used for missing values

-- WHERE phone IS NOT NULL	-- All values are filled with a value