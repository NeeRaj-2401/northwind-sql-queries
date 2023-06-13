-- 10. List all 'Orders' with 'Customer' details and 'Employee' who processed it
SELECT o.order_id, o.order_date, c.customer_id, c.company_name, e.employee_id, e.first_name, e.last_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN employees e ON o.employee_id = e.employee_id;
