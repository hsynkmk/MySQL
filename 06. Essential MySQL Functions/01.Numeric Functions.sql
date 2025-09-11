-- Numeric Functions
-- 1. ROUND: Round a number to the nearest integer or specified decimal places
SELECT ROUND(5.73);  -- Result: 6
SELECT ROUND(5.73, 1);  -- Result: 5.7
SELECT ROUND(5.7345, 2);  -- Result: 5.73

-- 2. TRUNCATE: Truncate a number to a specified number of decimal places
SELECT TRUNCATE(5.73, 2);  -- Result: 5.73

-- 3. CEILING: Round a number up to the nearest integer
SELECT CEILING(5.2);  -- Result: 6

-- 4. FLOOR: Round a number down to the nearest integer
SELECT FLOOR(5.7);  -- Result: 5

-- 5. ABS: Return the absolute value of a number
SELECT ABS(-5.7);  -- Result: 5.7

-- 6. RAND: Generate a random number between 0 and 1
SELECT RAND();