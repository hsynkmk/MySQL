use sql_store;

-- LIMIT is used for record count
SELECT *
FROM customers
LIMIT 3;

-- LIMIT is used for record count
SELECT *
FROM customers
LIMIT 6, 3;		-- Skip first 6 record and show 3 record after it


SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;