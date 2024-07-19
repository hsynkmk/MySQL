use sql_store;

-- Where clause is a kind of condition clause. We can use >, >=, <, <=, =, !=, <>, AND, OR, NOT
SELECT * 
FROM Customers
-- WHERE points > 3000;
-- WHERE state != 'VA';
-- WHERE birth_date > '1990-01-01' OR (points > 1000 AND state != 'VA');
WHERE NOT birth_date > '1990-01-01' AND (points > 1000 AND state != 'VA');
