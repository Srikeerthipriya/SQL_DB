create table customer (
id int primary key,
name varchar(100) not null);

select * from customer;

create table orders (
order_id int references customer(id),
quantity int not null,
product varchar(100) not null
);

select * from orders;

drop table orders;

create table orders (
order_id int,
quantity int not null,
product varchar(100) not null,
constraint FK_order_id foreign key (order_id) 
references customer(id)
);


select * from orders;