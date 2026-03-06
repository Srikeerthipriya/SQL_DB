-- 1.Create tables, with appropriate Primary and Foreign keys

create table customers (
customer_id int primary key,
first_name varchar(50) not null,
last_name varchar(50),
email varchar(60),
city varchar(30),
state varchar(20)
);

-----------------------------------------------------------------------------
create table orders (
order_id int primary key,
customer_id int references customers(customer_id),
order_date date,
amount decimal(10,2),
product_name varchar(30),
product_category varchar(30),
status varchar(30) not null
);

-----------------------------------------------------------------------------
create table products (
product_id int unique,
product_name varchar(30),
unit_price decimal(6,2),
category  varchar(30),
manufacturer varchar(30),
stock_quantity int,
order_id int references orders(order_id)
);

-----------------------------------------------------------------------------
-- 2.Add 'Phone_Number' column to Customers table

alter table customers
add phone_number varchar(20);

-----------------------------------------------------------------------------
select * from customers;
select * from orders;
select * from products;
