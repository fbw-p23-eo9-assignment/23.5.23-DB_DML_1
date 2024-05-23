# 23.5.23-DB_DML_1
# SQL's Data Manipulation and Query Language

## Description

In this exercise, you will focus on populating, querying and deleting the data in the database.


## Exercise 1:  Database and User Creation
**Scenario**:
You are setting up a new project and need to create a database and a user for the project.

**Tasks:**

- Create a new database named `project_db`.
- Create a new user named `project_user` with the password `password123`.
- Grant all privileges on the `project_db` database to `project_user`.


## Exercise 2: Table Creation and Data Insertion
**Scenario:**
You need to create a table to store information about employees and insert some initial data.

**Tasks:**

- Create a table named `employees` with the following columns:
    - `id` (serial, primary key)
    - `name` (varchar(100))
    - `position` (varchar(50))
    - `salary` (integer)
    - `hire_date` (date)
- Insert the following data into the employees table:
    - `('Alice', 'Manager', 60000, '2020-01-15')`
    - `('Bob', 'Developer', 50000, '2019-11-01')`
    - `('Carol', 'Analyst', 55000, '2018-07-23')`

Your table should look like this :
``` 
 id |  name  |  position  | salary | hire_date 
----+--------+------------+--------+------------
  1 | Alice  | Manager    |  60000 | 2020-01-15
  2 | Bob    | Developer  |  50000 | 2019-11-01
  3 | Carol  | Analyst    |  55000 | 2018-07-23
(3 rows)
```

## Exercise 3: Adding NOT NULL Constraint
**Scenario:**
You want to ensure that every employee has a position.

**Tasks:**

Add a `NOT NULL` constraint to the `position` column in the `employees` table.

**Intermediate Verification:**
Try to insert a new employee without a position to see the constraint in action.

```
INSERT INTO employees (name, salary, hire_date) VALUES
('Dave', 40000, '2021-06-01');  -- Should fail
```
 **Expected Error**
 ```
 ERROR:  null value in column "position" violates not-null constraint
```

## Exercise 4: Adding DEFAULT Value
**Scenario:**
You want to set a default `department` for new employees if none is specified.

**Tasks:**

- Add a new column `department` to the `employees` table with a default value of `General`.

**Intermediate Verification:**
Insert a new employee(name= "dave" , position = "supposrt" , salary=40000 , hire_date= "2021-06-01") without specifying the department to see the default value in action.

**Expected result:**
```
 id | name | position | salary | hire_date  | department 
----+------+----------+--------+------------+-------------
  4 | Dave | Support  |  40000 | 2021-06-01 | General
(1 row)

```

## Exercise 5: Adding UNIQUE Constraint
**Scenario:**
You want to ensure that no two employees can have the same email address.

**Tasks:**
- Add a new column `email` to the employees table.
- Add a `UNIQUE` constraint to the `email` column.

**Intermediate Verification:**
Try to insert a new employee with a duplicate email to see the constraint in action.

```
UPDATE employees SET email = 'alice@example.com' WHERE name = 'Alice';

INSERT INTO employees (name, position, salary, hire_date, department, email) VALUES
('Eve', 'HR', 45000, '2021-07-01', 'Human Resources', 'alice@example.com');  -- Should fail

```
**Expected Error:**
```
ERROR: duplicate key value violates unique constraint "unique_email"
DETAIL: Key (email)=(alice@example.com) already exists.

```

## Exercise 6: Adding CHECK Constraint
**Scenario:**
You want to ensure that the salary of employees is always greater than 30000.

**Tasks:**

Add a `CHECK` constraint to the `salary` column to ensure it is `greater than 30000`.


**Intermediate Verification:**
Try to insert a new employee with a salary less than 30000 to see the constraint in action.

```
INSERT INTO employees (name, position, salary, hire_date, department, email) VALUES
('Frank', 'Intern', 25000, '2021-08-01', 'Internship', 'frank@example.com');  -- Should fail

```

**Expected Error:**
```
ERROR:  new row for relation "employees" violates check constraint "check_salary"
DETAIL:  Failing row contains (5, Frank, Intern, 25000, 2021-08-01, Internship, frank@example.com).

```

## Exercise 7: Adding Primary Key to an Existing Table
**Scenario:**
You have a table departments that lacks a primary key, and you want to add one.

**Tasks:**

- Create a departments table with columns `dept_id`(SERIAL) and `dept_name` (VARCHAR).
- Alter the table to add a primary key on the `dept_id` column.

**Intermediate Verification:**
Insert some data just to the `dept_name` and verify the primary key.

**Expected Result:**

```
 dept_id |     dept_name     
---------+-------------------
       1 | Human Resources
       2 | Finance
       3 | Development
(3 rows)
```

## Exercise 8: Combining Constraints
**Scenario:**
You want to create a new table projects with multiple constraints.

**Tasks:**

- The query to create a table named `projects` with the following columns is given in [projects.sql](projects.sql) file:
    - `project_id` (serial, primary key)
    - `project_nam`e (varchar(100), not null, unique)
    - `start_date` (date, not null)
    - `end_date` (date)
    - `budget` (integer, check that budget is greater than 10000)

**Hint** : to execute the file in psql terminal, execute the following command in the directory that has this [projects.sql](projects.sql) file.
`\i projects.sql`
- Insert the following data into the projects table:
    - `('Website Redesign', '2021-03-01', '2021-09-01', 50000)`
    - `('New Marketing Campaign', '2021-04-15', '2021-10-15', 75000)`
- Print and see all the contents of the table.

**Expected Result:**
```
 project_id |      project_name      | start_date |  end_date  | budget 
------------+------------------------+------------+------------+--------
          1 | Website Redesign       | 2021-03-01 | 2021-09-01 |  50000
          2 | New Marketing Campaign | 2021-04-15 | 2021-10-15 |  75000
(2 rows)
```

### Exercise 9: Dropping a Column
Scenario:
The employees table currently has a department column that is no longer needed. You need to remove this column from the table.

**Tasks:**

Drop the **department** column from the **employees** table.

After executing the command, verify by selecting all records from the employees table.
