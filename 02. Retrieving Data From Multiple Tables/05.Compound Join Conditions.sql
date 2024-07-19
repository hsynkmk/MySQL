USE sql_store;

-- When joining multiple tables, you can specify multiple conditions (order_items does not have a unique identifier)
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
	AND oi.product_id = oin.product_id 