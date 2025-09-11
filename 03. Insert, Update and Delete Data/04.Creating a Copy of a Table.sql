USE sql_store;

-- CREATE a copy of a table
-- 1. Create orders_archived table with data from orders
CREATE TABLE orders_archived AS
SELECT * FROM orders;

-- 2. Insert specific data into orders_archived
INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01';

-- Note: Ensure to define primary keys and indexes as needed for the new table.