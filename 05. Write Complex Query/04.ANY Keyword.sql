USE sql_invoicing;


-- ANY Keyword
-- 1. Compare values against any result of a subquery
SELECT client_id, COUNT(*)
FROM clients
WHERE client_id = ANY (
	SELECT client_id
	FROM invoices
	GROUP BY client_id
	HAVING COUNT(*) >= 2
)

-- Note: ANY is used to compare a value to any value in a subquery result (same as IN operator).