SELECT vend_name, prod_name, prod_price
FROM vendors, products
WHERE vendors.vend_id = products.vend_id;

SELECT vend_name, prod_name, prod_price
FROM vendors, products;

SELECT vend_name, prod_name, prod_price
FROM vendors
INNER JOIN products ON vendors.vend_id = products.vend_id;

SELECT prod_name, vend_name, prod_price, quantity
FROM orderitems, products, vendors
WHERE products.vend_id = vendors.vend_id
 AND orderitems.prod_id = products.prod_id
 AND order_num = 20007; 

SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN (SELECT cust_id
				  FROM orders
                  WHERE order_num IN (SELECT order_num
									  FROM orderitems
                                      WHERE prod_id = 'RGAN01'));

SELECT cust_name, cust_contact
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
 AND orderitems.order_num = orders.order_num
 AND prod_id = 'RGAN01';

/* // Challenge // */
-- 1 v
SELECT cust_name, order_num
FROM customers, orders
WHERE customers.cust_id = orders.cust_id
ORDER BY cust_name, order_num;

SELECT cust_name, order_num
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id
ORDER BY cust_name, order_num;

-- 2 v
SELECT cust_name,
	   order_num,
       (SELECT SUM(item_price*quantity)
        FROM orderitems
        WHERE orderitems.order_num = orders.order_num) AS OrderTotal
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id
ORDER BY cust_name, order_num;

-- 3 v
SELECT cust_id, order_date
FROM orderitems, orders
WHERE orderitems.order_num = orders.order_num
 AND prod_id = 'BR01'
ORDER BY order_date;

SELECT cust_id, order_date
FROM orderitems
INNER JOIN orders ON orderitems.order_num = orders.order_num
WHERE prod_id = 'BR01'
ORDER BY order_date;

-- 4 v
SELECT cust_email
FROM customers
INNER JOIN orders ON orders.cust_id = customers.cust_id
INNER JOIN orderitems ON orders.order_num = orderitems.order_num
WHERE prod_id = 'BR01';

-- 5 v
SELECT cust_name, SUM(item_price*quantity) AS total_spend
FROM customers
INNER JOIN orders ON orders.cust_id = customers.cust_id
INNER JOIN orderitems ON orders.order_num = orderitems.order_num
GROUP BY cust_name HAVING total_spend >= 1000
ORDER BY cust_name;

SELECT cust_name, SUM(item_price*quantity) AS total_spend
FROM customers, orderitems, orders
WHERE orders.cust_id = customers.cust_id
 AND orders.order_num = orderitems.order_num
GROUP BY cust_name HAVING total_spend >= 1000
ORDER BY cust_name;