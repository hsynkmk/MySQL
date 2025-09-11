USE sql_invoicing;

-- EXISTS Operator
-- 1. Check for the existence of rows in a subquery
SELECT *
FROM clients c
WHERE EXISTS (
	SELECT client_id
    FROM invoices
    WHERE client_id = c.client_id
);

-- Note: EXISTS returns true if the subquery returns any rows.