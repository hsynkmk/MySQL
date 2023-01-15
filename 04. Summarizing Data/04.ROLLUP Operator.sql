USE sql_invoicing;

SELECT 
    client_id, SUM(invoice_total) AS total_sales
FROM
    invoices
GROUP BY client_id WITH ROLLUP;


SELECT 
    state, city, SUM(invoice_total) AS total_sales
FROM
    invoices
        JOIN
    clients USING (client_id)
GROUP BY state , city WITH ROLLUP