-- 35. Find the total sales for each year
SELECT YEAR(o.order_date) AS year, SUM(od.quantity * p.unit_price * (1 - od.discount)) AS total_sales
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY year;
