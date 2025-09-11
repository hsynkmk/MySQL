USE sql_store;

-- JOINing across databases
-- 1. Retrieve order items with product details from another database
SELECT *
FROM order_items oi
JOIN sql_inventory.products p  -- sql_inventory is another database
ON oi.product_id = p.product_id;

-- Note: Use database_name.table_name to reference tables in other databases.