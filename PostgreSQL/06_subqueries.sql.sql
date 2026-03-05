
-- SUBQUERY 



/* Find the employee who's salary is more than the average salary earned by all employees.
1. Find tha avg salary,  2. filter the employee based on the above result. */

SELECT * FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);


SELECT * FROM employee AS E
JOIN (SELECT AVG(salary) AS SAL FROM employee) AS AVG_S
ON E.salary > AVG_S.SAL;



-- MULTIPLE ROW SUBQUERY (There are two tpyes)


-- 1. Subquery which return mutiple colunms & multiple rows,
--  (Find the employee who earn the highest salary in each department)

SELECT D.dept_name, MAX(E.salary) FROM employee AS E
JOIN department AS D ON D.dept_id = E.dept_id
GROUP BY dept_name;

SELECT E.emp_id, E.emp_name, E.salary, E.dept_id, D.dept_name 
FROM employee AS E
JOIN department AS D ON E.dept_id = D.dept_id
WHERE (E.dept_id, E.salary)   -- using WHERE Clause for the filter condition
IN (SELECT E2.dept_id, MAX(E2.salary)  -- Here E2 is a new Alias
    FROM employee AS E2
    GROUP BY E2.dept_id);


-- 2. Subquery which return single colunm & multiple rows. 
--  (Find department who do not have any employee)
SELECT * FROM department
WHERE dept_name NOT IN (SELECT DISTINCT dept_name FROM employee2); -- Table: emp2



-- CORRELATED SUBQUERY (A subquery which is related to outer query)

-- (Find the employee in each department who earn more than the avg salary in that departmet) 
SELECT * FROM employee2 AS E1 -- Table: emp2
WHERE salary > (SELECT AVG(salary) FROM employee2 AS E2 -- Here E2 is a new Alias
				WHERE E2.dept_name = E1.dept_name);

-- (Find department who do not have any employee) 
SELECT * FROM department AS D
WHERE NOT EXISTS (SELECT 1 dept_name FROM employee2 AS E WHERE E.dept_name = D.dept_name);



-- NESTED SUBQUERY
/* (Find store who's sales where better than the avg sales accross all stores.
	1. Find the total sales for each store
	2. Find avg sales for all the store
	3. Compare 1 & 2) */

SELECT * FROM (SELECT store_name, SUM(price) AS total_sales FROM sales
				GROUP BY store_name) AS SALES
JOIN (SELECT AVG(total_sale) AS A_sales 
		FROM (SELECT store_name, SUM(price) AS total_sale FROM sales 
				GROUP BY store_name) AS X) AS AVG_sales
ON SALES.total_sales > AVG_sales.A_sales



