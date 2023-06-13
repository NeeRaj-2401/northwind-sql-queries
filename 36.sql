-- 36. Classify customers based on their total order amounts such that total order amounts > 5000 should be classified as 'High Value', if > 1000 then as 'Medium Value', and otherwise as 'Low Value'
SELECT c.customer_id, c.company_name,
    CASE
        WHEN SUM(od.quantity * p.unit_price * (1 - od.discount)) > 5000 THEN 'High Value'
        WHEN SUM(od.quantity * p.unit_price * (1 - od.discount)) > 1000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS OrderCategory
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.customer_id, c.company_name;
