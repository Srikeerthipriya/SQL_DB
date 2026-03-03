-- drop table customer;
-- drop table orders;

CREATE TABLE IF NOT EXISTS Customer (
    id SERIAL PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    state VARCHAR(50)
);

select * from customer;

CREATE TABLE IF NOT EXISTS Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customer(id),
    order_date DATE NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    product_category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL,
    order_status VARCHAR(20)
);


select * from orders;
