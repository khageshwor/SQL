-- 89. Write a query in SQL to list the employee id, name, salary, and department id of the employees
-- in ascending order of salary who works in the department 1001
-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Sample table: department

--     dep_id |  dep_name  | dep_location
-- --------+------------+--------------
--    1001 | FINANCE    | SYDNEY
--    2001 | AUDIT      | MELBOURNE
--    3001 | MARKETING  | PERTH
--    4001 | PRODUCTION | BRISBANE

-- Sample table: salary_grade

--      grade | min_sal | max_sal
-- -------+---------+---------
--      1 |     800 |    1300
--      2 |    1301 |    1500
--      3 |    1501 |    2100
--      4 |    2101 |    3100
--      5 |    3101 |    9999
-- Solutions

-- Method-1

    SELECT e.emp_id,
        e.emp_name,
        e.salary,
        e.dep_id
    FROM employees E
    WHERE e.dep_id = 1001
    ORDER BY e.salary ASC;

-- Output

    --     emp_id | emp_name | salary  | dep_id
    -- --------+----------+---------+--------
    --   69324 | MARKER   | 1400.00 |   1001
    --   67832 | CLARE    | 2550.00 |   1001
    --   68319 | KAYLING  | 6000.00 |   1001
