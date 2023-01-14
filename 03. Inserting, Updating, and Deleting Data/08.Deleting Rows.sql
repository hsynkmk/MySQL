USE sql_invoicing;

DELETE FROM invoices
WHERE invoice_id = 1
-- WHERE client_id = (SELECT * FROM clients WHERE name = 'Myworks')