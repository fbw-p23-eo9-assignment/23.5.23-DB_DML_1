CREATE TABLE departments (
    dept_id SERIAL,
    dept_name VARCHAR(50)
);

ALTER TABLE departments
ADD CONSTRAINT pk_dept PRIMARY KEY (dept_id);


-- Intermediate Verification:
-- Insert some data and verify the primary key.

INSERT INTO departments (dept_name) VALUES
('Human Resources'), ('Finance'), ('Development');

SELECT * FROM departments;


-- o/p 
--  dept_id |     dept_name     
-- ---------+-------------------
--        1 | Human Resources
--        2 | Finance
--        3 | Development
-- (3 rows)
