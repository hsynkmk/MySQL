USE sql_store;

-- CASE Operator
-- 1. Use CASE for conditional logic with multiple conditions
SELECT 
    order_id,
    CASE
        WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
        WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last Year'
        WHEN YEAR(order_date) < YEAR(NOW()) - 1 THEN 'Archived'
        ELSE 'Future'
    END AS status
FROM
    orders;

-- Note: CASE operator allows for complex conditional logic in SQL queries.