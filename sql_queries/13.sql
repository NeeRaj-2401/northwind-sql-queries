-- 13. List all orders shipped to 'Germany'
SELECT o.order_id, o.order_date, o.shipped_date
FROM orders o
WHERE o.ship_country = 'Germany';
