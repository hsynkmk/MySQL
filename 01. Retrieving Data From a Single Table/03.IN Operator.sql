use sql_store;

-- IN operator is used to specify multiple values in a WHERE clause
SELECT *
FROM Customers
WHERE state IN ('VA', 'FL', 'GA');
-- WHERE state NOT IN ('VA', 'FL', 'GA');


-- Instead of using
-- WHERE state = 'VA' OR state = 'FL' OR state = 'GA'
-- We can use IN operator