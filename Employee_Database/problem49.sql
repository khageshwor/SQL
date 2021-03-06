-- 49. Write a query in SQL to list the managers of department 1001 or 2001.
-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- Method-1

    SELECT *
    FROM employees
    WHERE job_name = 'MANAGER'
    AND (dep_id = 1001
        OR dep_id =2001);

-- Output

--      emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+----------+------------+------------+---------+------------+--------
--   67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001

