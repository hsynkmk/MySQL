USE sql_hr;

-- Correlated Subqueries
-- 1. Use a subquery that references the outer query
SELECT *
FROM employees e
WHERE salary > (
	SELECT AVG(salary)
    FROM employees
    WHERE office_id = e.office_id
)

-- Note: Correlated subqueries are evaluated once per row processed by the outer query.