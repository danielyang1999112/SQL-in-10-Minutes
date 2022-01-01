SELECT prod_name, prod_price
FROM products
WHERE prod_price = 3.49;

/*
= <> !=
< <= !<
> >= !>
BETWEEN
IS NULL
*/

SELECT prod_name, prod_price
FROM products
WHERE prod_price < 10;
WHERE prod_price <= 10;

SELECT vend_id, prod_name
FROM products
WHERE vend_id <> 'DLL01';
WHERE vend_id != 'DLL01';

SELECT prod_name, prod_price
FROM products
WHERE prod_price BETWEEN 5 AND 10;

SELECT prod_name
FROM products
WHERE prod_price IS NULL;

SELECT cust_name
FROM customers
WHERE cust_email IS NULL;

/* // Challenge // */
-- 1 v
SELECT prod_id, prod_name
FROM products
WHERE prod_price = 9.49;

-- 2 v
SELECT prod_id, prod_name
FROM products
WHERE prod_price >= 9;

-- 3 v
SELECT DISTINCT order_num
FROM orderitems
WHERE quantity >= 100;

-- 4 v
SELECT prod_name, prod_price
FROM products
WHERE prod_price BETWEEN 3 AND 6
ORDER BY prod_price;