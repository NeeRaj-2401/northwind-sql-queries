-- 18. Find all employees who report to 'Andrew Fuller'
SELECT * FROM employees WHERE reports_to = (
  SELECT employee_id FROM employees WHERE first_name = 'Andrew' AND last_name = 'Fuller'
);