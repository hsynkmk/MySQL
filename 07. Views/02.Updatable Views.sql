USE sql_invoicing;

-- Creating an Updatable View
-- 1. Create or replace a view to show invoices with outstanding balance
CREATE OR REPLACE VIEW invoices_with_balance AS
    SELECT 
        invoice_id,
        number,
        client_id,
        invoice_total,
        payment_total,
        invoice_total - payment_total AS balance,
        invoice_date,
        due_date,
        payment_date
    FROM
        invoices
    WHERE
        (invoice_total - payment_total) > 0;

-- Updates on Updatable Views
-- 2. Delete an invoice with a specific ID
DELETE FROM invoices_with_balance 
WHERE
    invoice_id = 1;

-- 3. Update due date for a specific invoice
UPDATE invoices_with_balance 
SET 
    due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE
    invoice_id = 1;

-- Note: Updatable views allow DML operations if they meet certain criteria.