-- SELECT cust_name, cust_contact
-- FROM customers, orders, orderitems
-- WHERE customers.cust_id = orders.cust_id
--  AND orders.order_num = orderitems.order_num
--  AND prod_id = 'RGAN01';

-- SELECT cust_name, cust_contact
-- FROM ProductCustomers
-- WHERE prod_id = 'RGAN01';

-- CREATE VIEW ProductCustomers AS
-- SELECT cust_name, cust_contact, prod_id
-- FROM customers, orders, orderitems
-- WHERE customers.cust_id = orders.cust_id
--  AND orders.order_num = orderitems.order_num;

-- SELECT cust_name, cust_contact
-- FROM ProductCustomers
-- WHERE prod_id = 'RGAN01';

-- SELECT CONCAT(RTRIM(vend_name), ' (', RTRIM(vend_country), ')') AS vend_title
-- FROM vendors
-- ORDER BY vend_name;

-- CREATE VIEW VendorLocations AS
-- SELECT CONCAT(RTRIM(vend_name), ' (', RTRIM(vend_country), ')') AS vend_title
-- FROM vendors;

-- SELECT * FROM vendorlocations;

-- CREATE VIEW CustomerEMailList AS
-- SELECT cust_id, cust_name, cust_email
-- FROM customers
-- WHERE cust_email IS NOT NULL;

-- SELECT *
-- FROM CustomerEMailList;

-- CREATE VIEW OrderItemsExpanded AS
-- SELECT order_num,
-- 	   prod_id,
--        quantity,
--        item_price,
--        quantity*item_price AS expanded_price
-- FROM orderitems;

-- SELECT *
-- FROM OrderItemsExpanded
-- WHERE order_num = 20008;

/* // Challenge // */
-- 1
CREATE VIEW CustomersWithOrders AS
SELECT C.*
FROM orders
JOIN customers AS C ON C.cust_id = orders.cust_id;

CREATE VIEW SolutionCustomersWithOrders AS
SELECT Customers.cust_id,
       Customers.cust_name,
       Customers.cust_address,
       Customers.cust_city,
       Customers.cust_state,
       Customers.cust_zip,
       Customers.cust_country,
       Customers.cust_contact,
       Customers.cust_email
FROM Customers
JOIN Orders ON Customers.cust_id = Orders.cust_id;

SELECT * FROM CustomersWithOrders;
SELECT * FROM SolutionCustomersWithOrders;

-- 2
/*
Cannot use order by clause in CREATE VIEW.
*/
