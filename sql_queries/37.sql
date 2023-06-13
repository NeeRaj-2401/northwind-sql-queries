-- 37. Classify products based on their sales volume such that TotalQuantity > 1000 then SalesCategory as 'High Sales'. If TotalQuantity > 500 then 'Medium Sales', and else 'Lower Sales':
SELECT p.product_id, p.product_name,
    CASE
        WHEN SUM(od.quantity) > 1000 THEN 'High Sales'
        WHEN SUM(od.quantity) > 500 THEN 'Medium Sales'
        ELSE 'Lower Sales'
    END AS SalesCategory
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name;
