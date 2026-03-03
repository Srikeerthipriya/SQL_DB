CREATE TABLE accounts (
	id 			INT,
	account		VARCHAR(5),
	name 		VARCHAR(100),
	balance		NUMERIC(6,2)
);

INSERT INTO accounts
	(id, account, name, balance)
VALUES
	(1, 'ABC01', 'John', 1000),
	(2, 'ABC02', 'Dave', 1000),
	(3, 'ABC03', 'Adam', 1000),
	(4, 'ABC04', 'Rob', 1000);