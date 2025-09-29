-- 04_promotion_candidates.sql
-- Promotion candidates: salary above dept average AND age < 40.
-- Version A: Regular SELECT (portable)
WITH dept_avg AS (
  SELECT dept_id, AVG(salary) AS avg_salary
  FROM employee_salary
  GROUP BY dept_id
)
SELECT d.first_name, d.last_name, dem.age, s.salary, s.dept_id
FROM employee_salary s
JOIN dept_avg davg ON s.dept_id = davg.dept_id
JOIN employee_demographics dem ON dem.employee_id = s.employee_id
JOIN employee_salary d ON d.employee_id = s.employee_id
WHERE s.salary > davg.avg_salary
  AND dem.age < 40
ORDER BY s.dept_id, s.salary DESC;

-- Version B: Persist results in a regular table (if temp tables are flaky in your tool)
-- DROP TABLE IF EXISTS promotion_candidates;
-- CREATE TABLE promotion_candidates AS
-- SELECT dem.first_name, dem.last_name, dem.age, s.salary, s.dept_id
-- FROM employee_salary s
-- JOIN dept_avg davg ON s.dept_id = davg.dept_id
-- JOIN employee_demographics dem ON dem.employee_id = s.employee_id
-- WHERE s.salary > davg.avg_salary AND dem.age < 40;
-- SELECT * FROM promotion_candidates;
