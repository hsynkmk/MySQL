USE sql_store;

-- INSERT multiple rows into a table
-- 1. Insert multiple shippers
INSERT INTO shippers (name)
VALUES ('Shipper1'), ('Shipper2'), ('Shipper3');

-- 2. Insert multiple products
INSERT INTO products (name, quantity_in_stock, unit_price)
VALUES ('pro1', 10, 11), ('pro2', 11, 12), ('pro3', 12, 13);

-- Note: Use a single INSERT statement to add multiple rows for efficiency.