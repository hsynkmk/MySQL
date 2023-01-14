USE sql_invoicing;

UPDATE invoices
SET payment_total = 10, payment_date = due_date
WHERE client_id = 3		-- or we can use WHERE client_id IN (3, 4)