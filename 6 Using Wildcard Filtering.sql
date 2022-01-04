SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE 'Fish%';

SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '%bean bag%';

SELECT prod_name
FROM products
WHERE prod_name LIKE 'F%y';

SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '_ inch teddy bear';

SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '__ inch teddy bear';

SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '% inch teddy bear';

/* // Challenge // */
-- 1 v
SELECT prod_name, prod_desc
FROM products
WHERE prod_name LIKE '%toy%';

-- 2 v
SELECT prod_name, prod_desc
FROM products
WHERE prod_name NOT LIKE '%toy%'
ORDER BY prod_name;

-- 3 v
SELECT prod_name, prod_desc
FROM products
WHERE prod_desc LIKE '%toy%' AND prod_desc LIKE '%carrots%';

-- 4 v
SELECT prod_name, prod_desc
FROM products
WHERE prod_desc LIKE '%toy%carrots%';