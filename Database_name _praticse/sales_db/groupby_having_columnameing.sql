select * from sales;

-- Max, Min, Total and Average order value, 
SELECT
	REGION,
	MAX(PRICE) as "Maxium Price",
	MIN(PRICE) as "Minimum Price",
	SUM(PRICE) as "Total Price"
FROM
	SALES
GROUP BY
	REGION; 


-- min order quantity more than 2

-- 13 city 
SELECT
	REGION, Category,
	MAX(PRICE) as "Maxium Price",
	MIN(PRICE) as "Minimum Price",
	SUM(PRICE) as "Total Price",
	Sum(quantity) as "Total Quantity"
FROM
	SALES
GROUP BY
	REGION,Category 
HAVING
	SUM(QUANTITY) > 2;

 -- min order quantity more than 10 in each category only for chennai & bengaluru

-- 4 city 
SELECT
	REGION, Category,
	MAX(PRICE) as "Maxium Price",
	MIN(PRICE) as "Minimum Price",
	SUM(PRICE) as "Total Price",
	Sum(quantity) as "Total Quantity"
FROM
	SALES
where 
    Region in ('Chennai','Bengaluru')
GROUP BY
	REGION, Category
HAVING
	SUM(QUANTITY) > 10;
