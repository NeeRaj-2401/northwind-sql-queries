-- 31. Find the top 3 customers who have ordered the most products
SELECT c.customer_id, c.company_name, SUM(od.quantity) AS total_products_ordered
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.company_name
ORDER BY total_products_ordered DESC
LIMIT 3;