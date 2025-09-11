-- Using the sql_invoicing database
USE sql_invoicing;

-- Dropping a Stored Procedure if it exists
DROP PROCEDURE IF EXISTS get_clients_by_state;

-- Creating a Stored Procedure with Parameters
-- 1. Define a procedure to retrieve clients by state
DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))
BEGIN
	SELECT * FROM clients c
    WHERE c.state = state;
END$$
DELIMITER ;

-- 2. Call the stored procedure with a parameter
CALL get_clients_by_state('CA');

-- Note: Parameters allow stored procedures to accept input values.