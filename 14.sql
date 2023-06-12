-- 14. Find the most expensive product in each category 
-- it tooke me a while to understand the question and find the solution (i.e. use of sub quey)
-- the sub query pickes the max of unit price from products of one category then repeats the process for all the categories from category table
SELECT c.category_id, c.category_name, p.product_id, p.product_name, p.unit_price
FROM categories c
JOIN products p ON c.category_id = p.category_id
WHERE p.unit_price = (
    SELECT MAX(unit_price)
    FROM products
    WHERE category_id = c.category_id
);
