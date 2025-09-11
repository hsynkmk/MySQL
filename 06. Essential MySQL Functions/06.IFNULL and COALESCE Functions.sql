USE sql_store;

-- IFNULL and COALESCE Functions
-- 1. IFNULL: Return a specified value if the expression is NULL
SELECT 
    order_id, IFNULL(shipper_id, 'Not Assigned') AS shipper
FROM
    orders;

-- 2. COALESCE: Return the first non-NULL value in the list
SELECT 
    order_id, COALESCE(shipper_id, comments, 'Not Assigned') AS shipper
FROM
    orders;

-- Note: IFNULL and COALESCE are used to handle NULL values in expressions.