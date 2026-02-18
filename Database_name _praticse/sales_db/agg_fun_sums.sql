--                          Aggregate Functions
------------------------------------------------------------------------

-- Aggregate functions compute a single result from a set of input values.

--          ---------------------------------------------
--          | Command | Description                     |
--          |---------|---------------------------------|
--          | AVG     | Computes average                |
--          | COUNT   | Counts number of non-null rows  |
--          | MIN     | Computes min of non-null values |
--          | MAX     | Computes max of non-null values |
--          | SUM     | Computes sum of non-null values |

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

select min(price) from sales; -- 1 order

-- largest order value

select max(price) from sales; --- 25 order

-----------------------

-- find all the above just for 'Chennai' region

select * from sales
where region = '';

--      total orders (volume / number of orders)

select count(id) from sales ; -- 50 count

--      order value (price total / sum)

select sum(price) from sales; -- price total 49855.13

-- lowest order value

select min(price) from sales; -- 1 order

-- largest order value

select max(price) from sales; --- 25 order



	