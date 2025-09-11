USE sql_invoicing;

-- HAVING clause
-- 1. Filter groups based on aggregate conditions
SELECT 
    client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS number_of_invoices
FROM
    invoices
GROUP BY client_id
HAVING total_sales > 500 AND number_of_invoices > 5;

-- Note: HAVING is used to filter groups after aggregation.