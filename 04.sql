-- 04. Find the total sales (Quantity * Unit_Price) for each category of products:
SELECT c.category_id, c.category_name, SUM(od.quantity * p.unit_price * (1 - od.discount)) AS total_sales
FROM categories c
JOIN products p ON c.category_id = p.category_id
JOIN order_details od ON p.product_id = od.product_id
GROUP BY c.category_id, c.category_name;