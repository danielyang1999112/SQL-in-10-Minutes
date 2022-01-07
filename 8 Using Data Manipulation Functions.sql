-- SUBSTRING()
-- CONVERT()
-- CURDATE()

SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
FROM vendors
ORDER BY vend_name;

/*
LEFT() RIGHT()
LTRIM() RTRIM()
LOWER() UPPER()
LENGTH() SUBSTRING() SOUNDEX()
*/

SELECT cust_name, cust_contact
FROM customers
WHERE cust_contact = 'Michael Green';

SELECT cust_name, cust_contact
FROM customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Michael Green');

SELECT order_num
FROM orders
WHERE YEAR(order_date) = 2020;

/*
ABS()
COS() SIN() TAN()
PI() SQRT() EXP()
*/

/* // Challenge // */
-- 1 v
SELECT cust_id, cust_name,
	   UPPER(CONCAT(LEFT(cust_contact, 2), LEFT(cust_city, 3))) AS user_login
FROM customers;

-- 2 v
SELECT order_num, order_date
FROM orders
WHERE YEAR(order_date) = 2020 AND MONTH(order_date) = 1
ORDER BY order_date;