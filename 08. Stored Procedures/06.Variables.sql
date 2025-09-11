-- Using the sql_invoicing database
USE sql_invoicing;

-- Creating a Stored Procedure with Variables
-- 1. Define a procedure to calculate risk factor
DELIMITER $$
CREATE PROCEDURE get_risk_factor()
BEGIN
	DECLARE risk_factor DECIMAL(9,2) DEFAULT 0;
	DECLARE invoices_total DECIMAL(9,2);
    DECLARE invoices_count INT;
    
	SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices i;
    
    SET risk_factor = invoices_total / invoices_count * 5;
    
    SELECT risk_factor;
END$$
DELIMITER ;

-- Note: Variables in stored procedures are used to store temporary data for calculations.