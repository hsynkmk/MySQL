use sql_store;

/*
JOIN is used to return all rows from multiple tables where the
join condition is satisfied. It is the most common type of join.
*/

SELECT order_id, first_name, last_name -- or *
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;	-- INNER JOIN (same with only JOIN)
