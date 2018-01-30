SELECT '' AS 'Ibrahim Qadhmani';
SELECT '' AS 'PROG2220: Section 2';
SELECT '' AS 'Assignment 2: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 2, Q1. Exercise 4-1 [5 points] ***';

SELECT 
    category_name, product_name, list_price
FROM
    Categories c
        JOIN
    Products p ON c.category_id = p.category_id
ORDER BY category_name , product_name;

SELECT '';
SELECT '' AS '*** Task 1, Q2. Exercise 4-2 [5 points] ***';

SELECT 
    first_name, last_name, line1, city, state, zip_code
FROM
    Customers c
        JOIN
    Addresses a ON c.customer_id = a.customer_id
WHERE
    email_address = 'allan.sherwood@yahoo.com';
	
	
SELECT '';
SELECT '' AS '*** Task 1, Q3. Exercise 4-4 [5 points] ***';

SELECT 
    last_name,
    first_name,
    order_date,
    product_name,
    item_price,
    discount_amount,
    quantity
FROM
    Customers c
        JOIN
    Orders o ON c.customer_id = o.customer_id
        JOIN
    Order_Items i ON o.order_id = i.order_id
        JOIN
    Products p ON i.product_id = p.product_id
ORDER BY last_name , order_date , product_name;

SELECT '';
SELECT '' AS '*** Task 1, Q4. Exercise 4-5 [5 points] ***';

SELECT DISTINCT
    p1.product_id, p1.product_name, p1.list_price
FROM
    Products p1
        JOIN
    Products p2 ON p1.product_id <> p2.product_id
        AND p1.list_price = p2.list_price;

SELECT '';
SELECT '' AS '*** Task 1, Q5. Exercise 4-7 [5 points] ***';

SELECT 
    'SHIPPED' AS ship_status, order_id, order_date
FROM
    Orders
WHERE
    ship_date IS NOT NULL 
UNION SELECT 
    'NOT SHIPPED' AS ship_status, order_id, order_date
FROM
    Orders
WHERE
    ship_date IS NULL
ORDER BY order_date;