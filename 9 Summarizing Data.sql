/*
AVG() COUNT() MAX() MIN() SUM()
*/

SELECT AVG(prod_price) AS avg_price
FROM products;

SELECT AVG(prod_price) AS avg_price
FROM products
WHERE vend_id = 'DLL01';

SELECT COUNT(*) AS num_cust
FROM customers;

SELECT COUNT(cust_email) AS num_cust
FROM customers;

SELECT MAX(prod_price) AS max_price
FROM products;

SELECT MIN(prod_price) AS min_price
FROM products;

SELECT SUM(quantity) AS items_ordered
FROM orderitems
WHERE order_num = 20005;

SELECT SUM(item_price*quantity) AS total_price
FROM orderitems
WHERE order_num = 20005;

SELECT AVG(DISTINCT prod_price) AS avg_price
FROM products
WHERE vend_id = 'DLL01';

SELECT COUNT(*) AS num_items,
	   MIN(prod_price) AS price_min,
       MAX(prod_price) AS price_max,
       AVG(prod_price) AS price_avg
FROM products;

/* // Challenge // */
-- 1 v
SELECT SUM(quantity) AS items_ordered
FROM orderitems;

-- 2 v
SELECT SUM(quantity) AS items_ordered
FROM orderitems
WHERE prod_id = 'BR01';

-- 3 v
SELECT MAX(prod_price) AS max_price
FROM products
WHERE prod_price <= 10;