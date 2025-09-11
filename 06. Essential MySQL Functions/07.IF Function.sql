USE sql_store;

-- IF Function
-- 1. Use IF to perform conditional logic
SELECT 
    order_id,
    order_date,
    IF(YEAR(order_date) = YEAR(NOW()),
        'Active',
        'Archived') AS status
FROM
    orders;

-- Note: IF function returns one value if a condition is true, and another value if false.