USE sql_store;

-- Start a transaction with mySQL
START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, NOW(), 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 1);

-- Commit the transaction
COMMIT;

-- Rollback the transaction (can be done with a if statement)
ROLLBACK;

-- Note: Use START TRANSACTION to begin a transaction, COMMIT to save the changes, and ROLLBACK to undo the changes.