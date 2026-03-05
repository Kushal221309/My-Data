
-- CLAUSE


-- WITH Clause / CTE
--  (Fetch employees who earn more than Average salary of all employee)
WITH avg_salary AS (SELECT AVG(salary) AS Average FROM employee2)  -- CTE query
SELECT * FROM employee2 AS E, avg_salary
WHERE E.salary > avg_salary.Average;



/* (Find store who's sales where better than the avg sales accross all stores.
	1. Find the total sales for each store
	2. Find avg sales for all the store
	3. Compare 1 & 2) */

WITH total_sales AS
	(SELECT store_name, SUM(price) AS total_s FROM sales
		GROUP BY store_name) 	-- CTE query
SELECT * FROM total_sales
JOIN (SELECT AVG(total_s) AS avg_S FROM total_sales) AS avg_sales
ON total_sales.total_s > avg_sales.avg_S;



-- SELECT Clause 
--  (fetch all employee details & add Remarks to those employee who earn more than the Avg pay)

SELECT *, (CASE 
				WHEN salary > (SELECT AVG(salary) FROM employee) THEN 'Higher Than Avg'
				ELSE NULL
			END) AS Remarks
FROM employee;



-- HAVING Clause
--  (Find the stores who have sold more units than the Avg units sold by all store)

SELECT store_name, SUM(quantity) FROM sales
GROUP BY store_name
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM sales);



-- INSERT
--  (Insert data to employee history table, make sure not insert duplicate records)

CREATE TABLE employee_history(
emp_id VARCHAR(20), emp_name VARCHAR(30), dept_name VARCHAR(30), salary INT);

SELECT * FROM employee_history; 
DELETE FROM employee_history;

INSERT INTO employee_history
SELECT E.emp_id, E.emp_name, D.dept_name, E.salary
FROM employee AS E JOIN department AS D ON E.dept_id = D.dept_id
-- (If the value does not exist, then insert the value)
WHERE NOT EXISTS(SELECT 1 FROM employee_history AS EH  
				  WHERE EH.emp_id = E.emp_id)



-- UPDATE 
/* Give 10% increase to all employee in bangalore location based on the maximum slary 
earned by an employee in each department only consider employee in employee_history table */

UPDATE employees0 e
SET salary = e.salary + 0.10 * (
    SELECT MAX(eh.salary)
    FROM employee_history0 eh
    WHERE eh.department_id = e.department_id
)
WHERE e.location = 'Bangalore'
  AND (
    SELECT MAX(eh.salary)
    FROM employee_history0 eh
    WHERE eh.department_id = e.department_id
  ) IS NOT NULL;


-- PostgreSQL syntax
UPDATE employees0 e
SET salary = e.salary + 0.10 * m.max_salary
FROM (
  SELECT department_id, MAX(salary) AS max_salary
  FROM employee_history0
  GROUP BY department_id
) m
WHERE e.department_id = m.department_id
  AND e.location = 'Bangalore';
  
/*
Example calculation using sample data (what happens)

Using the sample employee_history max values:

Department 1 max = 120000 → 10% of that = 12,000

Alice (dept 1, Bangalore) salary becomes 70,000 + 12,000 = 82,000

Bob (dept 1, Bangalore) salary becomes 80,000 + 12,000 = 92,000

Department 2 max = 70,000 → 10% = 7,000

Dan (dept 2, Bangalore) salary becomes 52,000 + 7,000 = 59,000

Department 3 max = 48,000 → 10% = 4,800

Eve (dept 3, Bangalore) salary becomes 45,000 + 4,800 = 49,800

Department 4: Chennai location, so unaffected

Dept 5 has no history / no current employees, so no update applies

*/



-- DELETE 
--  (Delete all department who do not have any employee)

DELETE FROM departments0 d
WHERE NOT EXISTS (
  SELECT 1 FROM employees0 e WHERE e.department_id = d.id
);






