SELECT '' AS 'Ibrahim Qadhmani';
SELECT '' AS 'PROG2220: Section 2';
SELECT '' AS 'Assignment 4: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 1, Q1. MGS Exercise 6-1 [3 points] ***';

SELECT 
    COUNT(order_id) AS Number_of_Orders,
    SUM(tax_amount) AS Sum_of_Tax_Amount
FROM
    orders;
	
SELECT '';
SELECT '' AS '*** Task 1, Q2. MGS Exercise 6-2 [4 points] ***';
	
SELECT 
    category_name,
    COUNT(product_id) AS Number_of_Products,
    MAX(list_price) AS Maximum_List_Price
FROM
    categories
        NATURAL JOIN
    products
GROUP BY category_name
ORDER BY Number_of_Products DESC;

SELECT '';
SELECT '' AS '*** Task 1, Q3. MGS Exercise 6-6 [3 points] ***';

SELECT 
    product_name,
    SUM(quantity * (item_price - discount_amount)) AS Total_Amount
FROM
    products
        NATURAL JOIN
    order_items
GROUP BY product_name WITH ROLLUP;

SELECT '';
SELECT '' AS '*** Task 1, Q4. MGS Exercise 7-3 [3 points] ***';

SELECT 
    category_name
FROM
    categories
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            products
        WHERE
            category_id = categories.category_id);