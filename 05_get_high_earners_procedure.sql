-- 05_get_high_earners_procedure.sql (MySQL)
-- Creates a stored procedure that returns all employees above a given salary threshold.
-- Usage:
--   CALL get_high_earners(70000);

DELIMITER $$
CREATE PROCEDURE get_high_earners(IN min_salary INT)
BEGIN
  SELECT first_name, last_name, dept_id, salary
  FROM employee_salary
  WHERE salary >= min_salary
  ORDER BY salary DESC;
END $$
DELIMITER ;

-- To drop later:
-- DROP PROCEDURE IF EXISTS get_high_earners;
