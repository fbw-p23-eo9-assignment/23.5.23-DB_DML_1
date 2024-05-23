ALTER TABLE employees
ADD CONSTRAINT check_salary CHECK (salary > 30000);


-- Intermediate Verification:
-- Try to insert a new employee with a salary less than 30000 to see the constraint in action.

INSERT INTO employees (name, position, salary, hire_date, department, email) VALUES
('Frank', 'Intern', 25000, '2021-08-01', 'Internship', 'frank@example.com');  -- Should fail

-- o/p 
-- ERROR:  new row for relation "employees" violates check constraint "check_salary"
-- DETAIL:  Failing row contains (5, Frank, Intern, 25000, 2021-08-01, Internship, frank@example.com).

