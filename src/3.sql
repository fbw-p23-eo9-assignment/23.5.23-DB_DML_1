ALTER TABLE employees
ALTER COLUMN position SET NOT NULL;


-- Intermediate Verification:
INSERT INTO employees (name, salary, hire_date) VALUES
('Dave', 40000, '2021-06-01');  -- Should fail



-- o/P 
-- ERROR:  null value in column "position" violates not-null constraint


