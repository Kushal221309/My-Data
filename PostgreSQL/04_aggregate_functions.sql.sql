
-- AGGREGATE FUNCTION (AVG, SUM, MIN, MAX, COUNT)


-- AVG (Fetch the average salary of staff who are Non-Teaching)
SELECT AVG(SS.salary) AS Average FROM staff_salary AS SS
JOIN staff AS STF ON SS.staff_id = STF.staff_id
WHERE STF.staff_type = 'Non-Teaching';


-- SUM (Fetch the total salary of staff who are Non-Teaching)
SELECT SUM(SS.salary) AS Total_salary FROM staff_salary AS SS
JOIN staff AS STF ON SS.staff_id = STF.staff_id
WHERE STF.staff_type = 'Non-Teaching';  -- using WHERE

-- SUM (Fetch the total salary of Both staff Teaching & Non Teaching)
SELECT SUM(SS.salary) FROM staff_salary AS SS
JOIN staff AS STF ON SS.staff_id = STF.staff_id
GROUP BY STF.staff_type;      -- using GROUP BY


-- MIN (Fetch the Minimum salary of both Teaching & Non-Teaching staff)
SELECT MIN(SS.salary) AS Minimum_salary FROM staff_salary AS SS
JOIN staff AS STF ON SS.staff_id = STF.staff_id
GROUP BY STF.staff_type;

-- MIN (Fetch the Maximum salary of both Teaching & Non-Teaching staff)
SELECT MAX(SS.salary) AS Maximum_salary FROM staff_salary AS SS
JOIN staff AS STF ON SS.staff_id = STF.staff_id
GROUP BY STF.staff_type;


-- COUNT (Fetch the staff types and their rows)
SELECT STF.staff_type, COUNT(*) AS staff_count
FROM staff AS STF
GROUP BY STF.staff_type;



