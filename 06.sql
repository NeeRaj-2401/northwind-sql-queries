-- 6. Get the customers who have placed more than 10 orders
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 10;