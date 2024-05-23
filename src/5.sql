ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);


-- Intermediate Verification:
-- Try to insert a new employee with a duplicate email to see the constraint in action.

UPDATE employees SET email = 'alice@example.com' WHERE name = 'Alice';

INSERT INTO employees (name, position, salary, hire_date, department, email) VALUES
('Eve', 'HR', 45000, '2021-07-01', 'Human Resources', 'alice@example.com');  -- Should fail


-- o/p 
-- ERROR: duplicate key value violates unique constraint "unique_email"
-- DETAIL: Key (email)=(alice@example.com) already exists.
