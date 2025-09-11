USE sql_invoicing;

-- ALL Keyword
-- 1. Compare values against all results of a subquery
SELECT *
FROM invoices
WHERE invoice_total > (
	SELECT MAX(invoice_total)
	FROM invoices
	WHERE client_id = 3
);

-- 2. Using ALL for comparison
SELECT *
FROM invoices
WHERE invoice_total > ALL (
	SELECT invoice_total
	FROM invoices
	WHERE client_id = 3
);

-- Note: ALL is used to compare a value to all values in a subquery result.
