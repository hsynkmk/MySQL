-- Using the sql_invoicing database
USE sql_invoicing;

-- Creating a View
-- 1. Create or replace a view to summarize sales by client
CREATE OR REPLACE VIEW sales_by_client AS
    SELECT 
        c.client_id, 
        c.name, 
        SUM(invoice_total) AS total_sales
    FROM
        clients c
    JOIN
        invoices i ON c.client_id = i.client_id
    GROUP BY client_id, name;

-- Note: Views are virtual tables representing the result of a query.