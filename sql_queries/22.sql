-- 22. Get the employees who have processed orders for 'Chai' product
SELECT e.employee_id, e.first_name, e.last_name
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE p.product_name = 'Chai';
