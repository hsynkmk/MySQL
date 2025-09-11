USE sql_hr;

-- SELF JOIN: Join a table with itself
-- 1. Retrieve employees with their managers
SELECT
	e.employee_id,
	e.first_name AS EmployeeName,
    m.first_name AS ManagerName		
FROM employees e					-- e and m are different table aliases for the same table.
JOIN employees m
	ON e.reports_to = m.employee_id

-- Note: SELF JOIN is useful for hierarchical data, like employee-manager relationships.