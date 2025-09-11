USE sql_invoicing;

-- DELETE rows from the invoices table
-- 1. Delete a specific invoice
DELETE FROM invoices
WHERE invoice_id = 1;

-- Example: Delete using a subquery
-- WHERE client_id = (SELECT client_id FROM clients WHERE name = 'Myworks');

-- Note: Use WHERE clause to specify which rows to delete.