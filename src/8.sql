CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE,
    budget INTEGER CHECK (budget > 10000)
);

INSERT INTO projects (project_name, start_date, end_date, budget) VALUES
('Website Redesign', '2021-03-01', '2021-09-01', 50000),
('New Marketing Campaign', '2021-04-15', '2021-10-15', 75000);


-- Intermediate Verification:
SELECT * FROM projects;


-- -- o/p
--  project_id |      project_name      | start_date |  end_date  | budget 
-- ------------+------------------------+------------+------------+--------
--           1 | Website Redesign       | 2021-03-01 | 2021-09-01 |  50000
--           2 | New Marketing Campaign | 2021-04-15 | 2021-10-15 |  75000
-- (2 rows)
