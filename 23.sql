-- 23. Find the most common shipping country (count the entries & order by that count)
SELECT ship_country, COUNT(*) AS total_shipments
FROM orders
GROUP BY ship_country
ORDER BY total_shipments DESC
LIMIT 1;
