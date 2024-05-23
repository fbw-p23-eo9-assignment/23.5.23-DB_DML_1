ALTER TABLE employees
ADD COLUMN department VARCHAR(50) DEFAULT 'General';


-- Intermediate Verification:
-- Insert a new employee without specifying the department to see the default value in action.

INSERT INTO employees (name, position, salary, hire_date) VALUES
('Dave', 'Support', 40000, '2021-06-01');

SELECT * FROM employees WHERE name = 'Dave';


-- o/p 
--  id | name | position | salary | hire_date  | department 
-- ----+------+----------+--------+------------+-------------
--   4 | Dave | Support  |  40000 | 2021-06-01 | General
-- (1 row)

