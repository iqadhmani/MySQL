SELECT '' AS 'Ibrahim Qadhmani';
SELECT '' AS 'PROG2220: Section 2';
SELECT '' AS 'Assignment 5: Task 3';

SELECT SYSDATE() AS 'Current System Date';

USE my_guitar_shop;

SELECT '';
SELECT '' AS '*** Task 3, Q1. MGS Exercise 12-3 [5 points] ***';

CREATE OR REPLACE VIEW IQ_order_item_products AS
    SELECT 
        o.order_id,
        o.order_date,
        i.item_price,
        i.discount_amount,
        i.item_price - i.discount_amount AS final_price,
        i.quantity,
        (i.item_price - i.discount_amount) * i.quantity AS item_total,
        p.product_name
    FROM
        orders o
            JOIN
        order_items i ON o.order_id = i.order_id
            JOIN
        products p ON i.product_id = p.product_id;
        
SELECT * FROM IQ_order_item_products;

SELECT '';
SELECT '' AS '*** Task 3, Q2. MGS Exercise 12-4 [3 points] ***';

SELECT 
    order_id, product_name, item_total
FROM
    IQ_order_item_products
ORDER BY product_name , order_id;

SELECT '';
SELECT '' AS '*** Task 3, Q3. MGS Exercise 12-5 [4 points] ***';

CREATE OR REPLACE VIEW IQ_product_summary AS
    SELECT 
        product_name,
        SUM(quantity) AS order_count,
        SUM(item_total) AS order_total
    FROM
        IQ_order_item_products
    GROUP BY product_name;

SELECT '';
SELECT '' AS '*** Task 3, Q4. MGS Exercise 12-6 [3 points] ***';

SELECT 
    product_name, order_total
FROM
    IQ_product_summary
ORDER BY order_total DESC
LIMIT 5;