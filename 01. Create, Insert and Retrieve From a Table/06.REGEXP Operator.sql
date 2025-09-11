use sql_store;

-- REGEXP operator for advanced pattern matching
-- ^ : Start of string
-- $ : End of string
-- | : OR operator
-- [] : Character set

-- 1. Match substring
-- Find last names containing 'field'
SELECT *
FROM customers
WHERE last_name REGEXP 'field';

-- 2. Match start of string
-- Find last names starting with 'na'
SELECT *
FROM customers
WHERE last_name REGEXP '^na';

-- 3. Match end of string
-- Find last names ending with 'by'
SELECT *
FROM customers
WHERE last_name REGEXP 'by$';

-- 4. OR condition
-- Find last names ending with 'field', containing 'mac', or 'rose'
SELECT *
FROM customers
WHERE last_name REGEXP 'field$|mac|rose';

-- 5. Character set
-- Find last names with 'ge' or 'ie'
SELECT *
FROM customers
WHERE last_name REGEXP '[gi]e';

-- 6. Range in character set
-- Find last names with 'ae' to 'he'
SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e';

-- Note: REGEXP is case-insensitive by default in MySQL

-- EXAMPLES
-- WHERE first_name REGEXP 'ELKA'|'AMBUR'
-- WHERE last_name REGEXP 'ey$|on$'
-- WHERE last_name REGEXP '^MY|SE'
-- WHERE last_name REGEXP 'B[RU]'