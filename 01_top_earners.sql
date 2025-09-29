-- 01_top_earners.sql
-- Top 1 earner per department using ROW_NUMBER (ties -> pick one deterministically)
SELECT first_name, last_name, dept_id, salary
FROM (
  SELECT
    first_name, last_name, dept_id, salary,
    ROW_NUMBER() OVER (PARTITION BY dept_id ORDER BY salary DESC, last_name, first_name) AS rn
  FROM employee_salary
) AS ranked
WHERE rn = 1
ORDER BY dept_id;
