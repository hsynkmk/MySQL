USE sql_invoicing;

-- GROUP BY clause
-- 1. Summarize total sales by client
SELECT 
    client_id, 
    SUM(invoice_total) AS total_sales
FROM
    invoices
GROUP BY client_id
ORDER BY total_sales DESC;

-- 2. Summarize total sales by state and city
SELECT 
    state, city, 
    SUM(invoice_total) AS total_sales
FROM
    invoices i
JOIN
    clients USING (client_id)
GROUP BY state, city;

-- Note: GROUP BY is used to arrange identical data into groups.