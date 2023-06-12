-- 28. Find the top 3 most popular categories of products ordered
SELECT c.category_id, c.category_name, COUNT(*) AS total_orders
FROM categories c
JOIN products p ON c.category_id = p.category_id
JOIN order_details od ON p.product_id = od.product_id
GROUP BY c.category_id, c.category_name
ORDER BY total_orders DESC
LIMIT 3;