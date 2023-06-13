-- 38. Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 then PerformanceCategory as 'High Performing'. If NumberOfOrders > 50 then 'Medium Performing', and else 'Lower Performing'
SELECT e.employee_id, e.first_name, e.last_name,
    CASE
        WHEN COUNT(*) > 100 THEN 'High Performing'
        WHEN COUNT(*) > 50 THEN 'Medium Performing'
        ELSE 'Lower Performing'
    END AS PerformanceCategory
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name;
