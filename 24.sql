-- 24. Find the order with the highest total cost
SELECT o.order_id, SUM(od.quantity * p.unit_price * (1 - od.discount)) AS total_cost
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY o.order_id
ORDER BY total_cost DESC
LIMIT 1;