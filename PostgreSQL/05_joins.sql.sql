
-- # JOIN


-- Fetch all the class name where music is thought a subject 
SELECT class_name FROM subjects AS SUB
JOIN classes AS CLS ON CLS.subject_id = SUB.subject_id
WHERE subject_name = 'Music';


-- Fetch the full name of all staff who teach mathematics.
SELECT (first_name||' '||last_name)AS Full_name FROM subjects AS SUB
JOIN classes AS CLS ON CLS.subject_id = SUB.subject_id
JOIN staff AS STF ON CLS.teacher_id = STF.staff_id  -- In classes table, teacher_id is there instead of staff_id.
WHERE SUB.subject_name = 'Mathematics';


-- (INNER JOIN) Fetch the employee name & the department name they belong to.
SELECT EMP.emp_name AS Employee_name, DEPT.dept_name AS Department_name
From department AS DEPT
JOIN employee AS EMP ON EMP.dept_id = DEPT.dept_id;
-- (Fetch only the data Present in both table)

-- (LEFT & RIGHT JOIN)Fetch the employee name & the department name they belong to.
SELECT EMP.emp_name AS Employee_name, DEPT.dept_name AS Department_name
From department AS DEPT
LEFT JOIN employee AS EMP ON EMP.dept_id = DEPT.dept_id;


-- Fetch details of all employee their manager, their department & the projects tbey work on.
SELECT EMP.emp_name, MNG.manager_name, DEPT.dept_name, PRO.project_name
FROM department AS DEPT
LEFT JOIN manager AS MNG ON MNG.dept_id = DEPT.dept_id
JOIN employee AS EMP ON MNG.manager_id = EMP.manager_id
LEFT JOIN projects AS PRO ON EMP.emp_id = PRO.team_member_id;


-- (FULL OUTER JOIN) Fetch the employee name & the department name they belong to.
SELECT EMP.emp_name, DEPT.dept_name FROM department AS DEPT 
FULL JOIN employee AS EMP ON EMP.dept_id = DEPT.dept_id;
-- (INNER JOIN + NULL values)

-- (CROSS JOIN) Fetch the employee name & the department name they belong to.
SELECT EMP.emp_name, DEPT.dept_name FROM employee AS EMP
CROSS JOIN department AS DEPT;
-- (EMP * DEPT)


-- (NATURAL JOIN) Fetch the employee name & the department name they belong to.
SELECT EMP.emp_name, DEPT.dept_name FROM department AS DEPT 
NATURAL JOIN employee AS EMP;
-- (Same as INNER JOIN but automatic match table)


-- (SELF JOIN) Write a query to fetch the child name & their age corresponding
--				to their parent name and parent age.
SELECT CHILD.name AS Child_name, CHILD.age AS Child_age, 
PARENT.name AS Parent_name, PARENT.age AS Parent_age
FROM family AS CHILD
JOIN family AS PARENT ON CHILD.parent_id = PARENT.member_id;




