select * from sales;

-- Max, Min, Total and Average order value, 
SELECT
	REGION,
	MAX(PRICE) as "Maxium Price",
	MIN(PRICE) as "min"
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
