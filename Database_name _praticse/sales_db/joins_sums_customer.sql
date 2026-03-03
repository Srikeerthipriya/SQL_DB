-- toatal revenue
-- revenue by state
-- top selling products by state
-- top selling product categories by state
-- revenue by customer (CLV Customer Life Time Value)
-- state wise customers count

select * from customer;
select * from orders;

-- toatal revenue
SELECT 
    SUM(o.price) AS total_revenue
FROM Orders o
WHERE o.order_status IN ('Completed', 'Delivered', 'Shipped');

SELECT
	SUM(PRICE)
FROM
	ORDERS;

-----------------------------------------------------------
SELECT
	C.STATE,
	SUM(O.PRICE) as revenue
FROM
	CUSTOMER C
	JOIN ORDERS O ON C.ID = O.CUSTOMER_ID
GROUP BY
	C.STATE;
--------------------------------------
SELECT
	C.STATE,O.PRODUCT_NAME,
	COUNT(PRODUCT_NAME) AS TOP_SELLING
FROM
	CUSTOMER C
	JOIN ORDERS O ON C.ID = O.CUSTOMER_ID
GROUP BY
	C.STATE,O.PRODUCT_NAME
ORDER BY state,TOP_SELLING DESC;
---------------------------------------
SELECT
	C.STATE,O.PRODUCT_CATEGORY,
	COUNT(PRODUCT_CATEGORY) AS TOP_SELLING
FROM
	CUSTOMER C
	JOIN ORDERS O ON C.ID = O.CUSTOMER_ID
GROUP BY
	C.STATE,O.PRODUCT_CATEGORY
ORDER BY	
	STATE,PRODUCT_CATEGORY;

---------------------------------------
SELECT STATE,COUNT(ID) FROM CUSTOMER GROUP BY STATE;

-----------------------------------------------------

SELECT C.ID,C.FNAME,SUM(O.PRICE) FROM 
	CUSTOMER C
	JOIN ORDERS O ON C.ID = O.CUSTOMER_ID
	GROUP BY
	C.ID,C.FNAME;