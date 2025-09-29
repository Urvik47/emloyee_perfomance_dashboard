-- 02_salary_vs_dept_avg.sql
-- Compare each employee's salary to their department average.
WITH dept_avg AS (
  SELECT dept_id, AVG(salary) AS avg_salary
  FROM employee_salary
  GROUP BY dept_id
)
SELECT
  s.first_name, s.last_name, s.dept_id, s.salary,
  d.avg_salary,
  s.salary - d.avg_salary AS diff_from_dept_avg
FROM employee_salary s
JOIN dept_avg d ON s.dept_id = d.dept_id
ORDER BY s.dept_id, diff_from_dept_avg DESC;
