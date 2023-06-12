-- 30. Find the employee who processed the most orders in August 2016
SELECT e.employee_id, e.first_name, e.last_name, COUNT(*) AS total_orders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
WHERE strftime('%Y-%m', o.order_date) = '2016-08'
GROUP BY e.employee_id, e.first_name, e.last_name
ORDER BY total_orders DESC
LIMIT 1;
