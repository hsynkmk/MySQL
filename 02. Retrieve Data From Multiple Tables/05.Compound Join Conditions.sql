USE sql_store;

-- Compound join conditions
-- 1. Join tables with multiple conditions
SELECT *
FROM order_items oi
JOIN order_item_notes oin
ON oi.order_id = oin.order_id
AND oi.product_id = oin.product_id;

-- Note: Use multiple conditions in the ON clause for complex joins. 