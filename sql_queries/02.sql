/* 2. Find all suppliers who provide products in the ‘Seafood’ category */

SELECT s.supplier_id, s.company_name
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id
JOIN categories c ON p.category_id = c.category_id
WHERE c.category_name = 'Seafood';
