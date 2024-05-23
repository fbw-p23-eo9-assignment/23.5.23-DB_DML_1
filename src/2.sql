CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary INTEGER,
    hire_date DATE
);

INSERT INTO employees (name, position, salary, hire_date) VALUES
('Alice', 'Manager', 60000, '2020-01-15'),
('Bob', 'Developer', 50000, '2019-11-01'),
('Carol', 'Analyst', 55000, '2018-07-23');


-- Intermediate Verification:
SELECT * FROM employees;


-- O/p
--  id |  name  |  position  | salary | hire_date 
-- ----+--------+------------+--------+------------
--   1 | Alice  | Manager    |  60000 | 2020-01-15
--   2 | Bob    | Developer  |  50000 | 2019-11-01
--   3 | Carol  | Analyst    |  55000 | 2018-07-23
-- (3 rows)
