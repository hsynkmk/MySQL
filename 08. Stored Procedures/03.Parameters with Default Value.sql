-- Using the sql_invoicing database
USE sql_invoicing;

-- Dropping a Stored Procedure if it exists
DROP PROCEDURE IF EXISTS get_clients_by_state;

-- Creating a Stored Procedure with Default Parameter Value
-- 1. Define a procedure to retrieve clients by state, with a default behavior
DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))
BEGIN
	IF state IS NULL THEN
		SELECT * FROM clients;
    ELSE
		SELECT * FROM clients c
		WHERE c.state = state;
    END IF;
END$$

-- Alternative approach using IFNULL
-- CREATE PROCEDURE get_clients_by_state(state CHAR(2))
-- BEGIN
-- 	SELECT * FROM clients c
--     WHERE c.state = IFNULL(state, c.state);
-- END$$

DELIMITER ;

-- 2. Call the stored procedure with a NULL parameter
CALL get_clients_by_state(NULL);

-- Note: Default parameter values allow procedures to handle optional inputs.