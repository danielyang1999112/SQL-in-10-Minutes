SELECT CONCAT(RTRIM(vend_name), ' (', RTRIM(vend_country), ')') AS vend_title
FROM vendors
ORDER BY vend_name;

SELECT cust_name, cust_contact
FROM customers AS C, orders AS O, orderitems AS OI
WHERE C.cust_id = O.cust_id
 AND OI.order_num = O.order_num
 AND prod_id = 'RGAN01';

SELECT cust_id, cust_name, cust_contact
FROM customers
WHERE cust_name = (SELECT cust_name
				   FROM customers
                   WHERE cust_contact = 'Jim Jones');

SELECT c1.cust_id, c1.cust_name, c1.cust_contact
FROM customers AS c1, customers AS c2
WHERE c1.cust_name = c2.cust_name
 AND c2.cust_contact = 'Jim Jones';

SELECT C.*,
	   O.order_num, O.order_date,
	   OI.prod_id, OI.quantity, OI.item_price
FROM customers AS C,
	 orders AS O,
     orderitems AS OI
WHERE C.cust_id = O.cust_id
 AND OI.order_num = O.order_num
 AND prod_id = 'RGAN01';

SELECT customers.cust_id, orders.order_num
FROM customers
 LEFT OUTER JOIN orders on customers.cust_id = orders.cust_id;

SELECT customers.cust_id, orders.order_num
FROM customers
 RIGHT OUTER JOIN orders ON customers.cust_id = orders.cust_id;

SELECT customers.cust_id,
	   COUNT(orders.order_num) AS num_ord
FROM customers
 INNER JOIN orders ON customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;

SELECT customers.cust_id,
	   COUNT(orders.order_num) AS num_ord
FROM customers
 LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;

/* // Challenge // */
-- 1 v
SELECT C.cust_name, O.order_num
FROM customers AS C
 INNER JOIN orders AS O ON C.cust_id = O.cust_id
ORDER BY cust_name;

-- -- 2 v
SELECT C.cust_name, O.order_num
FROM customers AS C
 LEFT OUTER JOIN orders AS O ON C.cust_id = O.cust_id
ORDER BY cust_name;

-- -- 3 v
SELECT P.prod_name, OI.order_num
FROM products AS P
 LEFT OUTER JOIN orderitems AS OI ON P.prod_id = OI.prod_id
ORDER BY P.prod_name;

-- 4 v
SELECT P.prod_name, COUNT(OI.order_num) AS num_ord
FROM products AS P
 LEFT OUTER JOIN orderitems AS OI ON P.prod_id = OI.prod_id
GROUP BY P.prod_name
ORDER BY P.prod_name;

-- 5 v
SELECT V.vend_id, COUNT(P.prod_id) AS available_prod
FROM vendors AS V
 LEFT OUTER JOIN products AS P ON V.vend_id = P.vend_id
GROUP BY V.vend_id;