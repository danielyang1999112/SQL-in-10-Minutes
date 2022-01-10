SELECT order_num
FROM orderitems
WHERE prod_id = 'RGAN01';

SELECT cust_id
FROM orders
WHERE order_num IN (20007, 20008);

SELECT cust_id
FROM orders
WHERE order_num IN (SELECT order_num
					FROM orderitems
                    WHERE prod_id = 'RGAN01');

SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN (1000000004, 1000000005);

SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN (SELECT cust_id
				  FROM orders
                  WHERE order_num IN (SELECT order_num
									  FROM orderitems
                                      WHERE prod_id = 'RGAN01'));

SELECT COUNT(*) AS orders
FROM orders
WHERE cust_id = 1000000001;

SELECT cust_name,
	   cust_state,
       (SELECT COUNT(*)
        FROM orders
        WHERE orders.cust_id = customers.cust_id) AS orders
FROM customers
ORDER BY cust_name;

SELECT cust_name,
	   cust_state,
       (SELECT COUNT(*)
        FROM orders
        WHERE cust_id = cust_id) AS orders
FROM customers
ORDER BY cust_name;

/* // Challenge // */
-- 1 v
SELECT cust_id
FROM orders
WHERE order_num IN (SELECT order_num
					FROM orderitems
                    WHERE item_price >= 10);

-- 2 v
SELECT cust_id, order_date
FROM orders
WHERE order_num IN (SELECT order_num
					FROM orderitems
                    WHERE prod_id = 'BR01')
ORDER BY order_date;

-- 3 v
SELECT cust_email
FROM customers
WHERE cust_id IN (SELECT cust_id
				  FROM orders
                  WHERE order_num IN (SELECT order_num
									  FROM orderitems
                                      WHERE prod_id = 'BR01'));

-- 4 v
SELECT cust_id,
	   (SELECT SUM(quantity*item_price)
        FROM orderitems
        WHERE orderitems.order_num = orders.order_num) AS total_ordered
FROM orders
ORDER BY total_ordered DESC;

-- 5 v
SELECT prod_name,
	   (SELECT SUM(quantity)
        FROM orderitems
        WHERE orderitems.prod_id = products.prod_id) AS quant_sold
FROM products;