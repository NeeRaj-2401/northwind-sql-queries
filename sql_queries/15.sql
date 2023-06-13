-- 15. Find the total revenue for the year 2016:
SELECT SUM(od.quantity * p.unit_price * (1 - od.discount)) AS total_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE YEAR(o.order_date) = 2016;
