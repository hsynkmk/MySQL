USE sql_invoicing;

DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * FROM clients;
END$$
DELIMITER ;

CALL get_clients();

-- DROPPING
-- DROP PROCEDURE IF EXISTS get_clients