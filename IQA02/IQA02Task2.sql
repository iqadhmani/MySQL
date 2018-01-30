SELECT '' AS 'Ibrahim Qadhmani';
SELECT '' AS 'PROG2220: Section 2';
SELECT '' AS 'Assignment 2: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 2, Q1. SWE Exercise 1 [2 points] ***';

SELECT DISTINCT
    c1.c_city
FROM
    Consultant c1
        JOIN
    Consultant c2 ON c1.c_city <> c2.c_city
ORDER BY c_city;

SELECT '';
SELECT '' AS '*** Task 2, Q2. SWE Exercise 2 [2 points] ***';

SELECT 
    p1.p_id, p1.project_name
FROM
    Project p1 JOIN Project p2 ON p1.p_id = p2.p_id
WHERE
    p1.parent_p_id IS NOT NULL;
	
SELECT '';
SELECT '' AS '*** Task 2, Q3. SWE Exercise 3 [4 points] ***';

SELECT 
    p1.p_id, p1.project_name, p1.parent_p_id, p2.project_name
FROM
    Project p1
        LEFT JOIN
    Project p2 ON p1.parent_p_id = p2.p_id;
	
SELECT '';
SELECT '' AS '*** Task 2, Q4. SWE Exercise 4 [3 points] ***';

SELECT 
    c1.c_id, c1.skill_id, c1.certification
FROM
    consultant_skill c1
        INNER JOIN
    consultant_skill c2 ON c1.skill_id = c2.skill_id
        AND c1.c_id = c2.c_id
WHERE
    c1.certification = 'Y'
ORDER BY c1.skill_id , c1.c_id;

SELECT '';
SELECT '' AS '*** Task 2, Q5. SWE Exercise 5 [4 points] ***';

SELECT 
    c.c_id, c_last, c_first, s.skill_id, skill_description
FROM
    consultant c
        JOIN
    consultant_skill cs ON c.c_id = cs.c_id
        JOIN
    skill s ON s.skill_id = cs.skill_id
WHERE
    certification = 'Y'
ORDER BY s.skill_id , c.c_id;