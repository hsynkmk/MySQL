-- Date Functions
-- 1. Current date and time
SELECT NOW(), CURDATE(), CURTIME();  -- NOW: current date and time, CURDATE: current date, CURTIME: current time

-- 2. Extract components from date
SELECT YEAR(NOW());  -- Result: current year
SELECT MONTH(NOW());  -- Result: current month
SELECT HOUR(NOW());  -- Result: current hour
SELECT SECOND(NOW());  -- Result: current second

-- 3. Get day and month names
SELECT DAYNAME(NOW());  -- Result: name of the current day
SELECT MONTHNAME(NOW());  -- Result: name of the current month

-- 4. Extract specific part of date
SELECT EXTRACT(DAY FROM NOW());  -- Result: current day of the month