SELECT '' AS 'Ibrahim Qadhmani';
SELECT '' AS 'PROG2220: Section 2';
SELECT '' AS 'Assignment 3: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE ap;

SELECT '';
SELECT '' AS '*** Task 1, Q1. Exercise 5-4 [2 points] ***';

INSERT INTO invoices
VALUES (DEFAULT, 32, 'AX-014-027', '2014-8-1', 434.58, 0, 0, 2, '2014-8-31', NULL);

SELECT ROW_COUNT() AS "INSERT: rows affected";

SELECT '';
SELECT '' AS '*** Task 1, Q2. Exercise 5-5 [2 points] ***';

INSERT INTO invoice_line_items
VALUES
(LAST_INSERT_ID(), 1, 160, 180.23, 'Hard drive'),
(LAST_INSERT_ID(), 2, 527, 254.35, 'Exchange Server update');

SELECT ROW_COUNT() AS "INSERT: rows affected";

SELECT '';
SELECT '' AS '*** Task 1, Q3. Exercise 5-6 [2 points] ***';

UPDATE invoices 
SET 
    credit_total = invoice_total * 0.1,
    payment_total = invoice_total - credit_total
WHERE
    invoice_id = LAST_INSERT_ID();
	
SELECT ROW_COUNT() AS "UPDATE: rows affected";
	
SELECT '';
SELECT '' AS '*** Task 1, Q4. Exercise 5-9 [4 points] ***';

DELETE FROM invoice_line_items 
WHERE
    invoice_id = LAST_INSERT_ID();
	
SELECT ROW_COUNT() AS "DELETE: rows affected";

DELETE FROM invoices 
WHERE
    invoice_id = LAST_INSERT_ID();
	
SELECT ROW_COUNT() AS "DELETE: rows affected";