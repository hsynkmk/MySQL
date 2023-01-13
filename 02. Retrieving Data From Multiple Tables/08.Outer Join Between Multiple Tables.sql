USE sql_store;

SELECT c.customer_id, c.first_name, o.order_id, sh.name AS Shipper
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id
LEFT JOIN shippers sh ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;