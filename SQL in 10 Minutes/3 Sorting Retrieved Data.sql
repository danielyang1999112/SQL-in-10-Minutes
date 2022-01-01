SELECT prod_name
FROM products
ORDER BY prod_name;

SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price, prod_name;

SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY 2, 3;

SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price DESC;

SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price DESC, prod_name;

/* // Challenge // */
-- 1 v
SELECT cust_name
FROM customers
ORDER BY cust_name DESC;

-- 2 v
SELECT cust_id, order_num
FROM orders
ORDER BY cust_id, order_date DESC;

-- 3 v
SELECT quantity, item_price
FROM orderitems
ORDER BY quantity DESC, item_price DESC;

-- 4 v
/*

- ,
+ BY

*/
