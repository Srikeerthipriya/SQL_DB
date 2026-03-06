select * from customer;
select * from orders;

INSERT INTO Customer (id, fname, lname, email, city, state) VALUES
(26,'Nikshi','P','Nik24@gmail.com','chennai','tamilnadu'),
(27,'keerthi','sri','sri24@gmail.com','pondicherry','tamilnadu'),
(28,'subha','sri','subha@gmail.com','munnar','kerala')

-- 1. Customers who have ordered more than twice 

-- using joins 
select c.id,c.fname,count(o.order_id)
from customer c
join orders o
on c.id = o.customer_id
group by c.id,c.fname
having count (o.order_id) >2

-- 15 records 

-- subquery 
-- 15 customer details order more than 2 

select * from customer
where id in (
select customer_id
from orders 
group by customer_id 
having count (order_id) >2))


-- 2. Customers who have never ordered anything
-- using joins 

select c.id, c.fname
from customer c
left join orders o 
on c.id = o.customer_id
where o.order_id is null

-- using subquery 

select * from customer
where id not in (
select customer_id 
from orders)



