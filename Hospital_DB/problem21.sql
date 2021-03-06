-- 21. Write a query in SQL to find the name and medication for those patients
-- who did not take any appointment.
-- Sample table: patient

--         ssn    |       name        |      address       |  phone   | insuranceid | pcp
-- -----------+-------------------+--------------------+----------+-------------+-----
--  100000001 | John Smith        | 42 Foobar Lane     | 555-0256 |    68476213 |   1
--  100000002 | Grace Ritchie     | 37 Snafu Drive     | 555-0512 |    36546321 |   2
--  100000003 | Random J. Patient | 101 Omgbbq Street  | 555-1204 |    65465421 |   2

-- Sample table: prescribes

--     physician |  patient  | medication |        date         | appointment | dose
-- -----------+-----------+------------+---------------------+-------------+------
--          1 | 100000001 |          1 | 2008-04-24 10:47:00 |    13216584 | 5
--          9 | 100000004 |          2 | 2008-04-27 10:53:00 |    86213939 | 10

-- Sample table: physician

--  employeeid |       name        |           position           |    ssn
-- ------------+-------------------+------------------------------+-----------
--           1 | John Dorian       | Staff Internist              | 111111111
--           2 | Elliot Reid       | Attending Physician          | 222222222
--           3 | Christopher Turk  | Surgical Attending Physician | 333333333
--           4 | Percival Cox      | Senior Attending Physician   | 444444444

-- Sample table: medication

--  code |     name     |         brand         | description
-- ------+--------------+-----------------------+-------------
--     1 | Procrastin-X | X                     | N/A
--     2 | Thesisin     | Foo Labs              | N/A
--     3 | Awakin       | Bar Laboratories      | N/A

-- Solutions

-- Method-1

    SELECT t.name AS "Patient", p.name AS "Physician", m.name AS "Medication"
    FROM patient t
    JOIN prescribes s ON s.patient=t.ssn
    JOIN physician p ON s.physician=p.employeeid
    JOIN medication m ON s.medication=m.code
    WHERE s.appointment IS NULL;

-- Method-2

    
    SELECT t.name AS "Patient", p.name AS "Physician", m.name AS "Medication"
    FROM patient t, prescribes s, physician p, medication m 
    WHERE s.patient=t.ssn
        AND s.physician=p.employeeid
        AND s.medication=m.code
        AND s.appointment IS NULL;

-- Output

    --      Patient   |  Physician  | Medication
    -- ------------+-------------+------------
    --  Dennis Doe | Molly Clock | Thesisin



