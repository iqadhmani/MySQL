-- If MySQL is not started, run Services and run MySQL57 service

-- cd "C:\xampp\mysql\bin"
-- mysql -u root < G:\mysql\db_setup\create_databases.sql
-- mysql -u root < G:\mysql\XXA01Task1.sql > G:\mysql\XXA01Task1.out

SELECT '' AS 'Ibrahim Qadhmani';
SELECT '' AS 'PROG2220: Section 2';
SELECT '' AS 'Assignment 1: Task 1';

SELECT SYSDATE() AS 'Current System Date';

USE ap;

SELECT '';
SELECT '' AS '*** Task 1, Q1. Textbook Exercise 3-06 (page 111) [2 points] ***';

SELECT 
    vendor_name,
    vendor_contact_last_name,
    vendor_contact_first_name
FROM
    vendors
ORDER BY vendor_contact_last_name , vendor_contact_first_name
LIMIT 10;

SELECT '';
SELECT '' AS '*** Task 1, Q2. Textbook Exercise 3-07 (page 111)[1 point] ***';

SELECT 
    vendor_name,
    vendor_contact_last_name,
    vendor_contact_first_name,
    CONCAT(vendor_contact_last_name,
            ', ',
            vendor_contact_first_name) AS full_name
FROM
    vendors
WHERE
    vendor_contact_last_name LIKE 'A%'
        OR vendor_contact_last_name LIKE 'B%'
        OR vendor_contact_last_name LIKE 'C%'
        OR vendor_contact_last_name LIKE 'E%'
ORDER BY vendor_contact_last_name , vendor_contact_first_name;

SELECT '';
SELECT '' AS '*** Task 1, Q3. Textbook Exercise 3-08 (page 111) [1 point] ***';

SELECT 
    invoice_due_date AS 'Due Date',
    invoice_total AS 'Invoice Total',
    invoice_total * 0.1 AS '10%',
    invoice_total * 1.1 AS 'Plus 10%'
FROM
    invoices
WHERE
    Invoice_Total >= 500
        AND Invoice_Total <= 1000
ORDER BY invoice_due_date DESC;

SELECT '';
SELECT '' AS '*** Task 1, Q4. Textbook Exercise 3-09 (page 111) [2 points] ***';

SELECT 
    invoice_number,
    invoice_total,
    payment_total + credit_total AS payment_credit_total,
    invoice_total - payment_total - credit_total AS balance_due
FROM
    invoices
WHERE
    invoice_total - payment_total - credit_total > 50
ORDER BY balance_due DESC
LIMIT 5;

SELECT '';
SELECT '' AS '*** Task 1, Q5. Textbook Exercise 3-10 (page 112) [2 points] ***';

SELECT 
    invoice_number,
    invoice_date,
    invoice_total - payment_total - credit_total AS balance_due,
    payment_date
FROM
    invoices
WHERE
    payment_date IS NULL;
	
SELECT '';
SELECT '' AS '*** Task 1, Q6. Textbook Exercise 3-11 (page 112) [1 point] ***';

SELECT DATE_FORMAT(CURRENT_DATE, '%m-%d-%Y');

SELECT '';
SELECT '' AS '*** Task 1, Q7. Textbook Exercise 3-12 (page 112) [1 point] ***';

SELECT 
    FORMAT(50000, 'Currency') AS starting_principal,
    FORMAT(50000 * 0.065, 'Currency') AS interest,
    FORMAT(50000 + 50000 * 0.065,
        'Currency') AS principal_plus_interest;