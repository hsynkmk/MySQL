USE sql_invoicing;

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


INSERT INTO payments
VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1)