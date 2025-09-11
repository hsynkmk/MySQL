-- Calculating Dates and Times
-- 1. Add or subtract intervals from dates
SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR);  -- Add 1 year to current date
SELECT DATE_ADD(NOW(), INTERVAL -1 MONTH);  -- Subtract 1 month from current date

-- 2. Calculate difference between dates
SELECT DATEDIFF(NOW(), '2018-03-18');  -- Difference in days from specified date to current date

-- 3. Calculate difference between times
SELECT TIME_TO_SEC('09:00') - TIME_TO_SEC('09:02');  -- Difference in seconds between two times