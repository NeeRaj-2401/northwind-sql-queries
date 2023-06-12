-- 5. List the employees and the number of orders each employee has taken
SELECT e.employee_id, e.first_name, e.last_name, COUNT(*) AS total_orders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name;