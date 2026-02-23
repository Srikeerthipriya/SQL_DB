CREATE TABLE products (
	id INT,
	name VARCHAR(100),
	price NUMERIC(5, 2),					-- 10000.00
	quantity INT,
	out_of_stock BOOLEAN DEFAULT FALSE
);


select * from products;

-- Adding a Column
-- Removing a Column
-- Adding a Constraint
-- Removing a Constraint
-- Changing a Column's Default Value
-- Changing a Column's Data Type
-- Renaming a Column
-- Renaming a Table
--------------------------------------------------------------------------------
-- Adding a Column

Alter table products
add review varchar(100);

Alter table products
add offer int;
-------------------------------------------------------------------------------
-- Removing a Column
Alter table products
drop column review;

---------------------------------------------------------------------------------
-- Adding a Constraint with name 
Alter table products
add constraint quan_check check (quantity >0);

-- Adding a Constraint without name 
Alter table products
add check(price >0);

Alter table products
add unique(id);

-- adding a constraint without name for not null 
Alter table products
alter column review set not null;
---------------------------------------------------------------------------------
-- Removing a Constraint with name
Alter table products
drop constraint quan_check;

-- Removing a constraint without name for not null 
Alter table products
alter column review drop not null;
-------------------------------------------------------------------------------------
-- Changing a Column's Default Value
Alter table products
alter column offer set default 0;

-- removing a Column's Default Value
Alter table products
alter column offer drop default ;
-------------------------------------------------------------------------------------
-- Changing a Column's Data Type

Alter table products
alter column offer type numeric(2,2);
-------------------------------------------------------------------------------------
-- Renaming a Column

Alter table products
rename name to quant_name;

Alter table products
rename review to prod_review;
-------------------------------------------------------------------------------------
-- Renaming a Table
Alter table products
rename to prod

select * from prod;