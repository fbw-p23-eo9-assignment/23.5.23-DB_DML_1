ALTER TABLE employees
DROP COLUMN department;

-- Intermediate Verification:
-- Check the structure of the employees table to ensure the department column has been removed.

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'employees';


-- Expected Result:
--  column_name 
-- -------------
--  id
--  name
--  position
--  salary
--  hire_date
--  email
-- (6 rows)

SELECT * FROM employees;


-- o/p
--  id |  name  |      position      | salary | hire_date  |     email     
-- ----+--------+--------------------+--------+------------+---------------
--   1 | Alice  | Manager            |  60000 | 2020-01-15 | alice@example.com
--   2 | Bob    | Senior Developer   |  65000 | 2019-11-01 | NULL
--   3 | Carol  | Analyst            |  55000 | 2018-07-23 | NULL
--   4 | Dave   | Support            |  40000 | 2021-06-01 | NULL
-- (4 rows)

