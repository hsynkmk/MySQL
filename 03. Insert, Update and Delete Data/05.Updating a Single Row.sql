USE sql_invoicing;

-- UPDATE a single row in the invoices table
-- 1. Update payment details for a specific invoice
UPDATE invoices
SET payment_total = 10, payment_date = due_date
WHERE invoice_id = 1;

-- Note: Use WHERE clause to specify the row to update.