CREATE TABLE pproducts
(
	prod_id		CHAR(10)		NOT NULL,
    vend_id		CHAR(10)		NOT NULL,
    prod_name	CHAR(254)		NOT NULL,
    prod_price	DECIMAL(8,2)	NOT NULL,
    prod_desc	VARCHAR(1000)	NULL
);

CREATE TABLE oorders
(
	order_num		INTEGER		NOT NULL,
    order_date		DATETIME	NOT NULL,
    cust_id			CHAR(10)	NOT NULL
);

CREATE TABLE vvendors
(
	vend_id			CHAR(10)		NOT NULL,
    vend_name		CHAR(50)		NOT NULL,
    vend_address	CHAR(50)		,
    vend_city		CHAR(50)		,
    vend_state		CHAR(5)			,
    vend_zip		CHAR(10)		,
    vend_country	CHAR(50)
);

CREATE TABLE oorderitems
(
	order_num		INTEGER			NOT NULL,
    order_item		INTEGER			NOT NULL,
    prod_id			CHAR(10)		NOT NULL,
    quantity		INTEGER			NOT NULL	DEFAULT 1,
    item_price		DECIMAL(8,2)	NOT NULL
);

SELECT CURRENT_DATE()

ALTER TABLE vvendors
ADD vend_phone CHAR(20);

ALTER TABLE vvendors
DROP COLUMN vend_phone;

DROP TABLE custcopy;

ALTER TABLE vvendors
RENAME TO producers;

/* // Challenge // */
-- 1
ALTER TABLE vendors
ADD vend_web CHAR(100);

-- 2
UPDATE vendors
SET vend_web = 'https://google.com/';


SELECT vend_web
FROM vendors;