use sql_store;

-- REGEXP operator is used to filter the result set based on pattern matching
SELECT *
FROM customers
-- WHERE last_name REGEXP 'field'			-- Same as WHERE last_name LIKE '%field%'
-- WHERE last_name REGEXP '^na'				-- Start with na
-- WHERE last_name REGEXP 'by$'				-- End with by
-- WHERE last_name REGEXP 'field$|mac|rose'	-- | means OR
-- WHERE last_name REGEXP '[gi]e'			-- Search for ge, ie, me
 WHERE last_name REGEXP '[a-h]e'			-- Search for ae,...,he 

-- EXAMPLES
-- WHERE first_name REGEXP 'ELKA'|'AMBUR'
-- WHERE last_name REGEXP 'ey$|on$'
-- WHERE last_name REGEXP '^MY|SE'
-- WHERE last_name REGEXP 'B[RU]'