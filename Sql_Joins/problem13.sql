-- 13. Write a SQL statement to make a list for the salesmen who works either for one or more customer
--  or not yet join under any of the customers who placed either one or more orders or no order
--   to their supplier.


-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        500

--Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
 
-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    SELECT customer.cust_name,salesman.name,orders.ord_no
    FROM orders
    RIGHT JOIN customer
        ON orders.customer_id=customer.customer_id
    RIGHT JOIN salesman 
        ON customer.salesman_id=salesman.salesman_id;

-- Method-2

    -- cust_name	city		grade	Salesman	ord_no	ord_date	purch_amt
    -- Brad Guzan	London			Pit Alex	70009	2012-09-10	270.65
    -- Nick Rimando	New York	100	James Hoog	70002	2012-10-05	65.26
    -- Geoff Cameron	Berlin		100	Lauson Hen	70004	2012-08-17	110.50
    -- Brad Davis	New York	200	James Hoog	70005	2012-07-27	2400.60