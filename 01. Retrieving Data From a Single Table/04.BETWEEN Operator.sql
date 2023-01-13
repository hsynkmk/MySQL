use sql_store;

SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;

-- Instead of using
-- WHERE points >= 1000 AND points <= 3000
-- We can use BETWEEN operator


SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'
