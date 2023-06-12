-- 3. Get the total quantity of each product sold
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM order_details
GROUP BY product_id;
