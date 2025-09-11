USE sql_invoicing;

-- Creating a Trigger
-- 1. Define a trigger to update invoice payment total after a payment is inserted
DELIMITER $$
DROP TRIGGER IF EXISTS payment_after_insert;
CREATE TRIGGER payment_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
END$$

DELIMITER ;

-- 2. Insert a payment to trigger the update
INSERT INTO payments
VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1);

-- Note: Triggers automatically execute specified actions in response to certain events on a table.