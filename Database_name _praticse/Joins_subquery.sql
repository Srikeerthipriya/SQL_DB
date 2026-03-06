-- 1. Customers who have ordered more than twice
-- 2. Customers who have never ordered anything

select * from customer;

select * from orders;

-- 1. Customers who have ordered more than twice
-- using joins 
SELECT c.id, c.fname,count(o.order_id)
FROM customer c
JOIN Orders o
ON c.id = o.customer_id
GROUP BY c.id, c.fname
HAVING COUNT(o.order_id) > 2;


-- using sub query 
select * from customer
where id in
(select customer_id
from orders 
group by customer_id having count(order_id )>2);

-- 2. Customers who have never ordered anything
-- using joins 
select c.id,c.fname
from customer c 
left join orders o 
on c.id=o.customer_id
where not o.order 
-- group by c.id,c.fname
-- having o.order_id is null 

select * from order 
where order_id not 


