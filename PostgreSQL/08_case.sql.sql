
-- CASE Statement
--  (Fetch the sales product status in store)
SELECT store_id, price,
CASE 
	WHEN price > 1000 THEN 'Expensive Product'
	WHEN price = 1000 THEN 'Modernate Product'
	ELSE 'Inexpensive Product'
END AS ProductStatus
FROM sales;


-- CASE Expression
--  (Fetch the names of sales product in the store)
SELECT store_id,
CASE price
	WHEN 280 THEN 'AirPods' 
	WHEN 1000 THEN 'iPhone'
	ELSE 'MacBook' 
END AS ProductName
FROM sales;



