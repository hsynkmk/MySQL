use sql_store;

SELECT *
FROM customers
WHERE phone IS NULL		-- IS NULL is used for missing values

-- WHERE phone IS NOT NULL	-- All values are filled with a value