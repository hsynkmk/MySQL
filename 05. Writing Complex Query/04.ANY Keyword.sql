USE sql_invoicing;

SELECT *
FROM clients
WHERE client_id = ANY (		-- We can type WHERE client_id IN
	SELECT client_id
	FROM invoices
	GROUP BY client_id
	HAVING COUNT(*) >= 2
)

