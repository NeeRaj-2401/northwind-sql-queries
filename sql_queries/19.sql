-- 19. Find the customers who have spent more than $5000 in total
SELECT c.customer_id, c.company_name, SUM(od.quantity * p.unit_price * (1 - od.discount)) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.customer_id, c.company_name
HAVING total_spent > 5000;