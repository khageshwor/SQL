-- 42.Write a query in SQL to display the first and last name, salary, 
-- and department ID for those employees who earn more than the minimum 
-- salary of a department which ID is 40.

-- Sample table: employees

-- Table

-- ---------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
-- |         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 2007-05-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
-- |         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 2005-06-25 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
-- AND so on

-- Solutions

-- Method-1

    SELECT first_name, last_name, salary, department_id 
    FROM employees WHERE salary > (SELECT MIN(salary) FROM employees WHERE department_id = 40)

-- Method-2

    SELECT first_name, last_name, salary, department_id 
    FROM employees
    WHERE salary > ANY (SELECT salary FROM employees WHERE department_id = 40);

-- Output

-- first_name	last_name	salary	department_id
-- Steven		King		24000.00	90
-- Neena		Kochhar		17000.00	90
-- Lex		    De Haan		17000.00	90
-- Alexander	Hunold		9000.00		60
-- Nancy		Greenberg	12000.00	100

