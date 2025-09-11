-- Viewing, Dropping, and Altering Events
-- 1. View all events
SHOW EVENTS;

-- 2. View events with a specific pattern
SHOW EVENTS LIKE 'yearly%';

-- 3. Drop an event if it exists
DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;

-- 4. Alter an event to enable it
ALTER EVENT yearly_delete_stale_audit_rows ENABLE;

-- Note: Use SHOW EVENTS to list events, DROP EVENT to remove them, and ALTER EVENT to modify them.