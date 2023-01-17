SHOW TRIGGERS;
SHOW TRIGGERS LIKE 'payment%';

DROP TRIGGER payment_after_insert;
DROP TRIGGER IF EXISTS payment_after_insert;