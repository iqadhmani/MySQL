SELECT '' AS 'Ibrahim Qadhmani';
SELECT '' AS 'PROG2220: Section 2';
SELECT '' AS 'Assignment 4: Task 2';

SELECT SYSDATE() AS 'Current System Date';

USE swexpert;

SELECT '';
SELECT '' AS '*** Task 2, Q1. SWE Exercise 1 [2 points] ***';

SELECT 
    ROUND(AVG(score), 1) AS 'Average Score'
FROM
    evaluation
WHERE
    evaluatee_id = 105;
	
SELECT '';
SELECT '' AS '*** Task 2, Q2. SWE Exercise 2 [2 points] ***';

SELECT 
    COUNT(*)
FROM
    consultant_skill
WHERE
    certification = 'Y' AND skill_id = 1;

SELECT '';
SELECT '' AS '*** Task 2, Q3. SWE Exercise 3 [4 points] ***';

SELECT DISTINCT
    c_first, c_last
FROM
    consultant c
        JOIN
    project_consultant pc ON c.c_id = pc.c_id
WHERE
    pc.p_id IN (SELECT 
            pc.p_id
        FROM
            consultant c
                JOIN
            project_consultant pc ON c.c_id = pc.c_id
        WHERE
            c.c_id = 100);

SELECT '';
SELECT '' AS '*** Task 2, Q4. SWE Exercise 4 [5 points] ***';

SELECT 
    p_id, project_name
FROM
    project
WHERE
    p_id IN (SELECT 
            p_id
        FROM
            evaluation) 
UNION SELECT 
    p_id, project_name
FROM
    project
WHERE
    mgr_id IN (SELECT 
            c_id
        FROM
            consultant
        WHERE
            c_last REGEXP '^Z');