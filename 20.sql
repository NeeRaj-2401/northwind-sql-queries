-- 20. List the top 5 employees who have processed the most orders
SELECT e.employee_id, e.first_name, e.last_name, COUNT(*) AS total_orders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name
ORDER BY total_orders DESC
LIMIT 5;