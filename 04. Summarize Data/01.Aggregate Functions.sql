USE sql_invoicing;

-- Aggregate functions
-- 1. Calculate summary statistics for invoices
SELECT
	MAX(invoice_total) AS Highest,
	MIN(invoice_total) AS Lowest,
	AVG(invoice_total) AS Average,
	SUM(invoice_total) AS Total,
	COUNT(invoice_total) AS NumberOfInvoices,
	COUNT(payment_date) AS NumberOfPayments,
	COUNT(*) AS TotalRecords,
	COUNT(DISTINCT client_id) AS TotalUniqueRecords
FROM invoices
-- WHERE ...

-- Note: Aggregate functions are used to perform calculations on a set of values.