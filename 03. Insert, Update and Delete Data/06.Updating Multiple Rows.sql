USE sql_invoicing;

UPDATE invoices
SET payment_total = 10, payment_date = due_date
WHERE client_id = 3;

-- Example: Update for multiple clients
-- WHERE client_id IN (3, 4);

-- Note: Use WHERE clause to specify multiple rows to update.