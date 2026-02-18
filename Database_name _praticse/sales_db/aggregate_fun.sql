-- Aggregate Functions
-- MIN() - returns the smallest value within the selected column 

-- MAX() - returns the largest value within the selected column 

-- COUNT() - returns the number of rows in a set 

-- SUM() - returns the total sum of a numerical column 

-- AVG() - returns the average value of a numerical column 
  
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

select sum(price) from sales; -- price total 49855.13

-- lowest order value

select min(quantity) from sales; -- 1 order

-- largest order value

select max(quantity) from sales; --- 25 order

------------------------------------------------------------

-- find all the above just for 'Chennai' region

select * from sales where region ='Chennai'; -- `10`

--      total orders (volume / number of orders)

select count(id) from sales where region ='Chennai'; -- 10 count

--      order value (price total / sum)

select sum(price) from sales where region ='Chennai'; -- price total 1075.94

-- lowest order value

select min(quantity) from sales
where region ='Chennai'; -- 2 order

-- largest order value

select max(quantity) from sales
where region ='Chennai'; --- 6 order



	