-- Using the sql_invoicing database
USE sql_invoicing;

-- Creating a Stored Procedure
-- 1. Define a procedure to retrieve all clients
DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * FROM clients;
END$$
DELIMITER ;

-- 2. Call the stored procedure
CALL get_clients();

-- 3. Dropping a Stored Procedure
DROP PROCEDURE IF EXISTS get_clients;

-- Note: Stored procedures are reusable SQL code blocks that can be executed with a single call.