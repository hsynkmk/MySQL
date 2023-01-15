USE sql_invoicing;

-- MAX()
-- MIN()
-- AVG()
-- SUM()
-- COUNT()

SELECT
	MAX(invoice_total) AS Highest,
	MIN(invoice_total) AS Lowest,
	AVG(invoice_total) AS Average,
	SUM(invoice_total) AS Total,
	COUNT(invoice_total) AS NumberOfInvoices,	-- Do not include NULL values
	COUNT(payment_date) AS NumberOfPayments,	-- Do not include NULL values
	COUNT(*) AS TotalRecords,					-- Include NULL values
	COUNT(DISTINCT client_id) AS TotalUniqueRecords
FROM invoices
-- WHERE ...