SELECT prod_id, prod_price, prod_name
FROM products
WHERE vend_id = 'DLL01' AND prod_price <= 4;

SELECT prod_name, prod_price
FROM products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

SELECT prod_name, prod_price
FROM products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01' AND prod_price >= 10;

SELECT prod_name, prod_price
FROM products
WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01') AND prod_price >= 10;

SELECT prod_name, prod_price
FROM products
WHERE vend_id IN ('DLL01', 'BRS01')
ORDER BY prod_name;

SELECT prod_name, prod_price
FROM products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE NOT vend_id = 'DLL01'
ORDER BY prod_name;

SELECT prod_name
FROM products
-- WHERE vend_id <> 'DLL01'
WHERE vend_id != 'DLL01'
ORDER BY prod_name;

/* // Challenge // */
-- 1 v
SELECT vend_name
FROM vendors
WHERE vend_country = 'USA' AND vend_state = 'CA';

-- 2 v
SELECT order_num, prod_id, quantity
FROM orderitems
WHERE ( prod_id IN ('BR01', 'BR02', 'BR03') ) AND quantity >= 100;

-- 3 v
SELECT prod_name, prod_price
FROM products
WHERE prod_price BETWEEN 3 AND 6
ORDER BY prod_price;

-- 4 v
/*
ORDER BY after WHERE
Wrong column names
*/