-- 25. Find the employees who have more than 100 orders processed
SELECT e.employee_id, e.first_name, e.last_name, COUNT(*) AS total_orders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name
HAVING total_orders > 100;
