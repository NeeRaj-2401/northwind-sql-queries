-- 11. Calculate the average product price by category:
SELECT c.category_id, c.category_name, AVG(p.unit_price) AS average_price
FROM categories c
JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;
