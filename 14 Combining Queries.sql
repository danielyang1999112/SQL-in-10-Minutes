SELECT cust_name, cust_contact, cust_email
FROM customers
WHERE cust_state IN ('IL', 'IN', 'MI');

SELECT cust_name, cust_contact, cust_email
FROM customers
WHERE cust_name = 'Fun4All';

SELECT cust_name, cust_contact, cust_email
FROM customers
WHERE cust_state IN ('IL', 'IN', 'MI')
UNION
SELECT cust_name, cust_contact, cust_email
FROM customers
WHERE cust_name = 'Fun4All';

SELECT cust_name, cust_contact, cust_email
FROM customers
WHERE cust_state IN ('IL', 'IN', 'MI') OR cust_name = 'Fun4All';

SELECT cust_name, cust_contact, cust_email
FROM customers
WHERE cust_state IN ('IL', 'IN', 'MI')
UNION ALL
SELECT cust_name, cust_contact, cust_email
FROM customers
WHERE cust_name = 'Fun4All';

SELECT cust_name, cust_contact, cust_email
FROM customers
WHERE cust_state IN ('IL', 'IN', 'MI')
UNION
SELECT cust_name, cust_contact, cust_email
FROM customers
WHERE cust_name = 'Fun4All'
ORDER BY cust_name, cust_contact;

/* // Challenge // */
-- 1 v
SELECT prod_id, quantity
FROM orderitems
WHERE quantity = 100
UNION
SELECT prod_id, quantity
FROM orderitems
WHERE prod_id LIKE 'BNBG%'
ORDER BY prod_id;

-- 2
SELECT prod_id, quantity
FROM orderitems
WHERE quantity = 100 OR prod_id LIKE 'BNBG%'
ORDER BY prod_id;

-- 3
SELECT prod_name
FROM products
UNION
SELECT cust_name
FROM customers
ORDER BY prod_name;

-- 4
/*
ORDER BY should be the last row
&
extra ; in the first half query
&
Missing a space in the last row
*/