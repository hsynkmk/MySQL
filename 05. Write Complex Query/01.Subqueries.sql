USE sql_store;

-- Subqueries
-- 1. Use a subquery to compare values
SELECT 
    *
FROM
    products
WHERE
    unit_price > (
        SELECT unit_price
        FROM products
        WHERE product_id = 3
    );

-- Note: Subqueries are nested queries used to return data to the main query.