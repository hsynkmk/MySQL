USE sql_store;

-- OUTER JOIN BETWEEN MULTIPLE TABLES
-- 1. Retrieve customers, their orders, and shipper details
SELECT c.customer_id, c.first_name, o.order_id, sh.name AS Shipper
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id
LEFT JOIN shippers sh ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

-- Note: Multiple OUTER JOINs can be used to include unmatched rows from several tables.