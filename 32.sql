-- 32. Find the employees who have not processed any orders
SELECT e.employee_id, e.first_name, e.last_name
FROM employees e
LEFT JOIN orders o ON e.employee_id = o.employee_id
WHERE o.order_id IS NULL;
