UPDATE customers
SET cust_email = 'kim@thetoystore.com'
WHERE cust_id = 1000000005;

UPDATE customers
SET cust_contact = 'Sam Roberts',
	cust_email = 'sam@toyland.com'
WHERE cust_id = 1000000006;

UPDATE customers
SET cust_email = null
WHERE cust_id = 1000000005;

DELETE FROM customers
WHERE cust_id = 1000000006;

/* // Challenge // */
-- 1
UPDATE vendors
SET vend_state = UPPER(vend_state)
WHERE vend_country = 'USA';
UPDATE customers
SET cust_state = UPPER(cust_state)
WHERE cust_country = 'USA';

-- 2
SELECT * FROM customers
WHERE cust_id = 1000000023;

DELETE FROM customers
WHERE cust_id = 1000000023;