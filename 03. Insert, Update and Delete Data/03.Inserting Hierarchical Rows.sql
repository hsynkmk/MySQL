USE sql_store;

-- INSERT hierarchical data
-- 1. Insert an order
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

-- 2. Insert order items using last_insert_id()
INSERT INTO order_items
VALUES (last_insert_id(), 1, 1, 2.95);

-- Note: Use last_insert_id() to reference the last inserted ID for hierarchical data.