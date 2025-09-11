USE sql_invoicing;

-- ROLLUP operator
-- 1. Generate subtotals and grand totals
SELECT 
    client_id, 
    SUM(invoice_total) AS total_sales
FROM
    invoices
GROUP BY 
    client_id WITH ROLLUP;

-- 2. Generate subtotals and grand totals by state and city
SELECT 
    state, 
    city, 
    SUM(invoice_total) AS total_sales
FROM
    invoices
JOIN
    clients USING (client_id)
GROUP BY 
    state, 
    city WITH ROLLUP;

-- Note: ROLLUP is used to create subtotals and grand totals in a result set.