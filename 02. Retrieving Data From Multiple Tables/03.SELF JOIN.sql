USE sql_hr;

SELECT
	e.employee_id,
	e.first_name AS EmployeeName,
    m.first_name AS ManagerName		
FROM employees e					-- e and m are different table aliases for the same table.
JOIN employees m
	ON e.reports_to = m.employee_id