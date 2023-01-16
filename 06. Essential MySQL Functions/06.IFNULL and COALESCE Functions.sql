USE sql_store;

SELECT 
    order_id, IFNULL(shipper_id, 'Not Assigned') AS shipper
FROM
    orders;
    
    
SELECT 
    order_id, COALESCE(shipper_id, comments, 'Not Assigned') AS shipper
FROM
    orders;