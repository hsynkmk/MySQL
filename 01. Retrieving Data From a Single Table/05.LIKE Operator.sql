use sql_store;

SELECT *
FROM customers
-- WHERE last_name LIKE 'b%'		-- Start with b
-- WHERE last_name LIKE '%b%'		-- Include b
-- WHERE last_name LIKE 'brush%'	-- Start with a string
-- WHERE last_name LIKE '%y'		-- End with y
-- WHERE last_name LIKE '_____y'	-- End with y and before 5 character
-- WHERE last_name LIKE 'b____y'	-- start with b end with y between 4 character
 WHERE address LIKE '%trail%' OR address LIKE '%avenue%'


-- NOTE--
-- % is any number of characters
-- _ is single character