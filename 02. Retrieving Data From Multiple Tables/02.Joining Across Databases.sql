USE sql_store;

SELECT *
FROM order_items oi
JOIN sql_inventory.products p		-- sql_inventory is another database
	ON oi.product_id = p.product_id