-- 4. Write a SQL statement to display all the customers, who are either belongs to the city New York
-- or not had a grade above 100.

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002


-- Solutions

-- Method-1

    SELECT * 
    FROM customer 
    WHERE city = 'New York' 
    OR NOT grade>100;

-- Method-2

    SELECT *
    FROM customer
    WHERE (city = 'New York' AND grade<=100 )

-- Output

-- customer_id	cust_name	city		grade   salesman_id
-- 3002		Nick Rimando	New York	100	5001
-- 3007		Brad Davis	New York	200	5001
-- 3009		Geoff Cameron	Berlin		100	5003