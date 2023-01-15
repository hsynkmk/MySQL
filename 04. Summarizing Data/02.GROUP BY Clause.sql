USE sql_invoicing;

SELECT 
    client_id, SUM(invoice_total) AS total_sales
FROM
    invoices
GROUP BY client_id
ORDER BY total_sales DESC;


SELECT 
    state, city, SUM(invoice_total) AS total_sales
FROM
    invoices i
        JOIN
    clients USING (client_id)
GROUP BY client_id;

