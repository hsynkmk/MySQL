USE sql_invoicing;

UPDATE invoices
SET payment_total = 10, payment_date = due_date
WHERE invoice_id = 1