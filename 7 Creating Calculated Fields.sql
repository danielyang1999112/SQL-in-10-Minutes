SELECT CONCAT(vend_name, ' (', vend_country, ')')
FROM vendors
ORDER BY vend_name;

SELECT CONCAT(RTRIM(vend_name), ' (', RTRIM(vend_country), ')')
FROM vendors
ORDER BY vend_name;

/* RTRIM() LTRIM() TRIM() */

SELECT CONCAT(RTRIM(vend_name), ' (', RTRIM(vend_country), ')') AS vend_title
FROM vendors
ORDER BY vend_name;

SELECT prod_id, quantity, item_price
FROM orderitems
WHERE order_num = 20008;

SELECT prod_id,
	   quantity,
       item_price,
       quantity*item_price AS expanded_price
FROM orderitems
WHERE order_num = 20008;

/* ( + - * / ) */

SELECT 3 * 2;

SELECT TRIM(' ABC ');

SELECT CURDATE();

/* // Challenge // */
-- 1 v
SELECT vend_id,
	   vend_name AS vname,
       vend_address AS vaddress,
       vend_city AS vcity
FROM vendors
ORDER BY vname;

-- 2 v
SELECT prod_id, prod_price,
       0.9*prod_price AS sale_price
FROM products;