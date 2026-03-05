
-- RECURSION 



-- Display number from 1 to 10 without using any in built function.

WITH RECURSIVE numbers AS
	(SELECT 1 AS n   -- Base / Anchor query
	UNION
	SELECT n + 1    -- Recursive query 
	FROM numbers 
	WHERE n < 10) 
SELECT * FROM 	NUMBERS;



-- 













