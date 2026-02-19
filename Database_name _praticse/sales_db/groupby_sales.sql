-- Groupby 

-- For each city
-- Max, Min, Total and Average order value, 

-- having -- conditon 
-- min order quantity more than 2

-- For each city
SELECT
	COUNT(REGION),
	REGION
FROM
	SALES
GROUP BY
	REGION;  -- 13 city 

-- Max, Min, Total and Average order value, 
SELECT
	REGION,
	MAX(PRICE),
	MIN(PRICE),
	SUM(PRICE)
FROM
	SALES
GROUP BY
	REGION; 


-- min order quantity more than 2

-- 13 city 
SELECT
	REGION,
	SUM(QUANTITY)
FROM
	SALES
GROUP BY
	REGION
HAVING
	SUM(QUANTITY) > 2;

 -- min order quantity more than 10 only for chennai & bengaluru

-- 9 city 
SELECT
	REGION,
	SUM(QUANTITY)
FROM
	SALES
where 
    Region in ('Chennai','Bengaluru')
GROUP BY
	REGION
HAVING
	SUM(QUANTITY) > 10;




 

