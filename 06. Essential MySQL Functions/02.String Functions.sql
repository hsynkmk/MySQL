-- String Functions
-- 1. UPPER and LOWER: Convert string to uppercase or lowercase
SELECT UPPER('aBcd');  -- Result: 'ABCD'
SELECT LOWER('ABcD');  -- Result: 'abcd'

-- 2. LTRIM, RTRIM, and TRIM: Remove spaces from strings
SELECT LTRIM('  ABCD');  -- Result: 'ABCD'
SELECT RTRIM('ABCD  ');  -- Result: 'ABCD'
SELECT TRIM(' ABCD  ');  -- Result: 'ABCD'

-- 3. LEFT and RIGHT: Extract characters from the left or right
SELECT LEFT('ABCD', 2);  -- Result: 'AB'
SELECT RIGHT('ABCD', 3);  -- Result: 'BCD'

-- 4. SUBSTRING: Extract a substring from a string
SELECT SUBSTRING('ABCDEF', 2, 2);  -- Result: 'BC'
SELECT SUBSTRING('ABCDEF', 2);  -- Result: 'BCDEF'

-- 5. LOCATE: Find the position of a substring
SELECT LOCATE('C', 'ABCDEF');  -- Result: 3

-- 6. REPLACE: Replace occurrences of a substring
SELECT REPLACE('ABCDEF', 'CD', 'Z');  -- Result: 'ABZEF'