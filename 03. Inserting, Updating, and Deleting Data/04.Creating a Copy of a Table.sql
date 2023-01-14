USE sql_store;

CREATE TABLE orders_archived AS		-- We need to provide primary key...
SELECT * FROM orders;				-- Copies all the data from orders to orders_archived


INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01'