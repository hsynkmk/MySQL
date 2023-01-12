use sql_store;

SELECT *
FROM Customers
WHERE state IN ('VA', 'FL', 'GA');
-- WHERE state NOT IN ('VA', 'FL', 'GA');


-- Instead of using
-- WHERE state = 'VA' OR state = 'FL' OR state = 'GA'
-- We can use IN operator