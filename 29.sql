-- 29. Find the month in the year 2016 with the highest total sales
SELECT month(o.order_date) AS month, SUM(od.quantity * p.unit_price * (1 - od.discount)) AS total_sales
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE YEAR(o.order_date) = 2016
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;
