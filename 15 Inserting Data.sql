-- INSERT INTO customers
-- VALUES(1000000006,
-- 	   'Toy Land',
--        '123 Any Street',
--        'New York',
--        'NY',
--        '11111',
--        'USA',
--        NULL,
--        NULL);

-- INSERT INTO customers(cust_id,
-- 					  cust_name,
--                       cust_address,
--                       cust_city,
--                       cust_state,
--                       cust_zip,
--                       cust_country,
--                       cust_contact,
--                       cust_email)
-- VALUES(1000000006,
-- 	   'Toy Land',
--        '123 Any Street',
--        'New York',
--        'NY',
--        '11111',
--        'USA',
--        NULL,
--        NULL);

-- INSERT INTO customers(cust_id,
-- 					  cust_contact,
--                       cust_email,
--                       cust_name,
--                       cust_address,
--                       cust_city,
--                       cust_state,
--                       cust_zip,
--                       cust_country)
-- SELECT cust_id,
-- 	   cust_contact,
--        cust_email,
--        cust_name,
--        cust_address,
--        cust_city,
--        cust_state,
--        cust_zip,
--        cust_country
-- FROM custnew;

-- CREATE TABLE custcopy AS SELECT * FROM customers;

/* // Challenge // */
-- 1 v
INSERT INTO customers(cust_id,
					  cust_contact,
                      cust_email,
                      cust_name,
                      cust_address,
                      cust_city,
                      cust_state,
                      cust_zip,
                      cust_country)
VALUES(1000000023,
	   'USYD',
       'yh123@123.com',
       'Daniel',
       'Chongqing',
       'ChongQing',
       'CQ',
       '401234',
       'CN');

-- 2 v
CREATE TABLE ordercopy AS SELECT * FROM orders;
CREATE TABLE orderitemscopy AS SELECT * FROM orderitems;