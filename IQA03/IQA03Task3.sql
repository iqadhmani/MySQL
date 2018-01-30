SELECT '' AS 'Ibrahim Qadhmani';
SELECT '' AS 'PROG2220: Section 2';
SELECT '' AS 'Assignment 3: Task 3';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 3, Q1. SWE Exercise 1 [2 points] ***';

INSERT INTO consultant
VALUES
(106, 'Qadhmani', 'Ibrahim', 'M', '123 Fake Address', 'FakeCity', 'FA', 12345, 1234567890, 'fake@fake.fake');

SELECT ROW_COUNT() AS "INSERT: rows affected";

SELECT '';
SELECT '' AS '*** Task 3, Q2. SWE Exercise 2 [2 points] ***';

INSERT INTO client
VALUES
(17, 'City of Waterloo', 'Jaworsky', 'Dave', 5198861550);

SELECT ROW_COUNT() AS "INSERT: rows affected";

SELECT '';
SELECT '' AS '*** Task 3, Q3. SWE Exercise 3 [3 points] ***';

INSERT INTO project
VALUES
(88, 'ION Rapid Transit', 17, NULL, NULL);

SELECT ROW_COUNT() AS "INSERT: rows affected";

SELECT '';
SELECT '' AS '*** Task 3, Q4. SWE Exercise 4 [3 points] ***';

UPDATE project 
SET 
    parent_p_id = 88
WHERE
    parent_p_id IS NULL
        AND project_name <> 'ION Rapid Transit';
		
SELECT ROW_COUNT() AS "UPDATE: rows affected";