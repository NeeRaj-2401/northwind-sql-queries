-- 26. Find the customer who has ordered the most 'Chai' product
SELECT c.customer_id, c.company_name, SUM(od.quantity) AS total_quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE p.product_name = 'Chai'
GROUP BY c.customer_id, c.company_name
ORDER BY total_quantity DESC
LIMIT 1;
