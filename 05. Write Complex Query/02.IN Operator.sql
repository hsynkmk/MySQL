USE sql_store;

-- IN Operator with subquery
-- 1. Find products not in any order
SELECT 
    *
FROM
    products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id
    FROM order_items
);

-- Note: IN operator is used to filter results based on a list or subquery.
