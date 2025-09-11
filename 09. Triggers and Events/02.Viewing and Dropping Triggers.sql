-- Viewing and Dropping Triggers
-- 1. View all triggers
SHOW TRIGGERS;

-- 2. View triggers with a specific pattern
SHOW TRIGGERS LIKE 'payment%';

-- 3. Drop a specific trigger
DROP TRIGGER payment_after_insert;

-- 4. Drop a trigger if it exists
DROP TRIGGER IF EXISTS payment_after_insert;

-- Note: Use SHOW TRIGGERS to list triggers and DROP TRIGGER to remove them.