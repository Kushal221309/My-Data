
-- WINDOW FUNCTION 



SELECT dept_name, max(salary) AS max_salary FROM employee2
GROUP BY dept_name;


SELECT e.*, max(salary) OVER() AS max_salary 
FROM employee2 AS e; --(without partition)

SELECT e.*, max(salary) OVER(PARTITION BY dept_name) AS max_salary 
FROM employee2 AS e; --(with partition)



-- ROW_NUMBER 
SELECT e.*, ROW_NUMBER() OVER(PARTITION BY dept_name ORDER BY emp_id) AS rn
FROM employee2 AS e;
	
--  (Fetch the first 2 employee from each deartment to join the company)
SELECT * FROM
	(SELECT e.*, ROW_NUMBER() OVER(PARTITION BY dept_name ORDER BY emp_id) AS rn
	FROM employee2 AS e) AS X
WHERE X.rn < 3;



-- RANK
--  (Fetch the top 3 employee in each department earning the max salary)
SELECT * FROM
	(SELECT e.*, RANK() OVER(PARTITION BY dept_name ORDER BY salary DESC) AS r
	FROM employee2 AS e) AS X
WHERE X.r < 4;



-- DENSE_RANK
--  (Fetch the top 3 employee in each department earning the max salary)
SELECT * FROM
	(SELECT e.*, DENSE_RANK() OVER(PARTITION BY dept_name ORDER BY salary DESC) AS dr
	FROM employee2 AS e) AS X
WHERE X.dr < 4;



-- ROW_NUMBER, RANK, DANSE_RANK
SELECT e.*,
	ROW_NUMBER() OVER(PARTITION BY dept_name ORDER BY salary) AS rn, --(123456)
	RANK() OVER(PARTITION BY dept_name ORDER BY salary) AS r,		--(123446)
	DENSE_RANK() OVER(PARTITION BY dept_name ORDER BY salary) AS dr  --(123445)
FROM employee2 AS e;	-- (difference in Admin data)



-- LAG / LEAD
SELECT e.*,
	LAG(salary, 2, 0000) OVER(PARTITION BY dept_name ORDER BY emp_id) AS prev_emp_salary,
	LEAD(salary, 2, 0000) OVER(PARTITION BY dept_name ORDER BY emp_id) AS next_emp_salary
FROM employee2 AS e;	--(LEG & LEAD = 2,  NULL = 0000)

/* Fatch a quary to display if the salary of an employee is higher, lower or equal 
   to the previous employee */
SELECT e.*, 
LAG(salary) OVER(PARTITION BY dept_name ORDER BY salary) AS prev_emp,
CASE WHEN e.salary > LAG(salary) OVER(PARTITION BY dept_name ORDER BY emp_id) THEN 'Higher than previous emp'
	 WHEN e.salary < LAG(salary) OVER(PARTITION BY dept_name ORDER BY emp_id) THEN 'Lower than previous emp'
	 WHEN e.salary = LAG(salary) OVER(PARTITION BY dept_name ORDER BY emp_id) THEN 'Same as than previous emp'
	 END salary_range 
FROM employee2 AS e;




-- FRAME CLAUSE
--  1. RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW 			 (Default)
--  2. RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING  



-- FIRST_VALUE
--  (Write query to display the most expensive product under each catagory)
SELECT p.*, FIRST_VALUE(product_name) OVER(PARTITION BY product_category ORDER BY price DESC) AS Most_Expensive
FROM product AS p;

SELECT p.*, FIRST_VALUE(product_name) OVER(PARTITION BY product_category ORDER BY price DESC 
RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Most_Expensive
FROM product AS p;



-- LAST_VALUE
--  (Write query to display the least expensive product under each catagory)
SELECT p.*, LAST_VALUE(product_name) OVER(PARTITION BY product_category ORDER BY price DESC 
RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Least_Expensive
FROM product AS p;



-- Alternate Way To Write Query 	(using Window Functions)
SELECT p.*, 
FIRST_VALUE(product_name) OVER w AS Most_Expensive,
LAST_VALUE(product_name) OVER w AS Least_Expensive
FROM product AS p
WINDOW w AS (PARTITION BY product_category ORDER BY price DESC 
RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING);



-- NTH_VALUE 
--  (Write query to display the second most expensive product under each catagory)
SELECT p.*, 
FIRST_VALUE(product_name) OVER w AS Most_Expensive,
LAST_VALUE(product_name) OVER w AS Least_Expensive,
NTH_VALUE(product_name, 2) OVER w AS Second_Most_Expensive  --(Accept two arguments)
FROM product AS p
WINDOW w AS (PARTITION BY product_category ORDER BY price DESC 
RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING);



-- NTILE 
SELECT p.*, NTILE(3) OVER(ORDER BY price) AS Buckets
FROM product AS p
WHERE product_category = 'Phone';

--  (Write a query to segregate all expensive phone, mid range and the cheaper phone)
SELECT product_name,
CASE
	WHEN X.Buckets = 1 THEN 'Expensive Phone'
	WHEN X.Buckets = 2 THEN 'Mid Phone'
	WHEN X.Buckets = 3 THEN 'Cheaper Phone'
	END Phone_category
FROM
	(SELECT p.*, NTILE(3) OVER(ORDER BY price DESC) AS Buckets
	FROM product AS p
	WHERE product_category = 'Phone') AS X;
	


-- CUME_DIST (Cumulative Distribution)
/*  Value ->  1<=CUM_DIST>0
	Formula =  Current Row Number / Total Number of Row  */
SELECT p.*, CUME_DIST() OVER(ORDER BY price DESC) AS cume_distribution,
	 ROUND(CUME_DIST() OVER(ORDER BY price DESC) :: NUMERIC * 100, 2) AS cume_dist_per
FROM product AS p;

--  (Query to fetch all products which are constituting the first 30% of the data in product tabe based on price)
SELECT product_name, (cume_dist_per||'%') AS cume_dist_per
FROM (SELECT *, ROUND(CUME_DIST() OVER(ORDER BY price DESC) :: NUMERIC * 100, 2) AS cume_dist_per
	  FROM product) AS x
WHERE x.cume_dist_per <= 30;



-- PERCENT_RANK  (Relative rank of the current row / Percentage ranking)
/*  Value ->  1<=PERCENT_RANK>0
	Formula = Current Row Number - 1 / Total Number of row - 1  */
SELECT p.*, PERCENT_RANK() OVER(ORDER BY price DESC) AS percentage_rank,
	 ROUND(PERCENT_RANK() OVER(ORDER BY price DESC) :: NUMERIC * 100, 2) AS per_rank
FROM product AS p;

--  (Query to identify how much percentage more expensive is Galaxy Z Fold 3 when compared to all products)
SELECT product_name, (per_rank||'%')
FROM (SELECT p.*, ROUND(PERCENT_RANK() OVER(ORDER BY price) :: NUMERIC * 100, 2) AS per_rank
	  FROM product AS p) AS x
WHERE product_name = 'Galaxy Z Fold 3';





