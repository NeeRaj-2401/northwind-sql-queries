/*1. Get the total number of orders placed by each customer */

SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;
