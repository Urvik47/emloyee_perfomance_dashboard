-- 03_above_company_avg.sql
-- Employees whose salary is above the company-wide average.
WITH company_avg AS (
  SELECT AVG(salary) AS avg_salary FROM employee_salary
)
SELECT s.first_name, s.last_name, s.dept_id, s.salary, ca.avg_salary AS company_avg_salary
FROM employee_salary s
CROSS JOIN company_avg ca
WHERE s.salary > ca.avg_salary
ORDER BY s.salary DESC;
