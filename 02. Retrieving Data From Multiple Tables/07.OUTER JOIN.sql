USE sql_store;

-- Return all data from customers table, null or not --
-- LEFT OUTER JOIN = LEFT JOIN --
-- RIGHT OUTER JOIN = RIGHT JOIN --

SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id
ORDER BY c.customer_id;


SELECT c.customer_id, c.first_name, o.order_id
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id
ORDER BY c.customer_id;

-- EXAMPLE --
SELECT p.product_id, p.name, oi.quantity
FROM products p
LEFT JOIN order_items oi ON oi.product_id = p.product_id
ORDER BY p.product_id