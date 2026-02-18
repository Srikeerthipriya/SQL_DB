--  clrt + K -- sql format 
  
  
  -- Find out the following
    --      total orders (volume / number of orders)
    --      order value (price total / sum)
    --      lowest order value
    --      largest order value
    --      find all the above just for 'Chennai' region


select * from sales;

--      total orders (volume / number of orders)

select count(id) from sales ; -- 50 count

--      order value (price total / sum)

select sum(price) from sales; -- price total 4985.13

-- lowest order value

select min(price) from sales; -- 9.99

-- largest order value

select max(price) from sales; --- 1249.00

---------------------------

-- find all the above just for 'Chennai' region

SELECT
	*
FROM
	SALES
WHERE
	REGION = 'Chennai';

-- 10

--      total orders (volume / number of orders)

select count(id) from sales 
where region = 'Chennai'; -- 10 count

--      order value (price total / sum)

select sum(price) from sales
where region = 'Chennai'; -- price total 1075.94

-- lowest order value

select min(price) from sales
where region = 'Chennai'; -- 49.99

-- largest order value

select max(price) from sales
where region = 'Chennai'; --- 199.00





	