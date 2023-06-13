-- 16. List all products that are discontinued
SELECT product_id, product_name
FROM products
WHERE discontinued = 1;