SELECT COUNT(*) AS num_prods
FROM products
WHERE vend_id = 'DLL01';

SELECT vend_id, COUNT(*) AS num_prods
FROM products
GROUP BY vend_id;

SELECT cust_id, COUNT(*) AS orders
FROM orders
GROUP BY cust_id
HAVING COUNT(*) >= 2;

SELECT vend_id, COUNT(*) AS num_prods
FROM products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(*) >=2;

SELECT vend_id, COUNT(*) AS num_prods
FROM products
GROUP BY vend_id
HAVING COUNT(*) >=2;

SELECT order_num, COUNT(*) AS items
FROM orderitems
GROUP BY order_num
HAVING COUNT(*) >= 3;

SELECT order_num, COUNT(*) AS items
FROM orderitems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY items, order_num;

/*
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
*/

/* // Challenge // */
-- 1 v
SELECT order_num, COUNT(*) AS order_lines
FROM orderitems
GROUP BY order_num
ORDER BY order_lines;

-- 2 v
SELECT vend_id, MIN(prod_price) AS cheapest_item
FROM products
GROUP BY vend_id
ORDER BY cheapest_item;

-- 3 v
-- SELECT order_num, SUM(quantity) AS total_quantity
-- FROM orderitems
-- GROUP BY order_num
-- HAVING total_quantity >=100;

SELECT order_num
FROM OrderItems
GROUP BY order_num
HAVING SUM(quantity) >= 100
ORDER BY order_num;

-- 4 v
SELECT order_num, SUM(item_price*quantity) AS total_spend
FROM orderitems
GROUP BY order_num
HAVING total_spend >= 1000
ORDER BY order_num;

-- 5
/*
GROUP BY - must be an actual column, which is order_num.
*/