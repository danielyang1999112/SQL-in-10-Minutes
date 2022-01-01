SELECT prod_name
FROM products;

SELECT prod_id, prod_name, prod_price
FROM products;

SELECT *
FROM products;

SELECT vend_id
FROM products;

SELECT DISTINCT vend_id
FROM products;

SELECT prod_name
FROM products
LIMIT 5;

SELECT prod_name
FROM products
LIMIT 5 OFFSET 5;

-- comment

# comment

/*
commment
*/

/* // Challenge // */
-- 1
SELECT cust_id
FROM customers;

-- 2
SELECT DISTINCT prod_id
FROM orderitems;

-- 3
SELECT *
FROM customers;
-- SELECT cust_id
-- FROM customers;
