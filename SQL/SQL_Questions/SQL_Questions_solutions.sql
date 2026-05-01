CREATE TABLE order_details (

	order_details_id INT PRIMARY KEY,
	order_id INT,
	pizza_id VARCHAR(50),
	quantity INT
);

COPY order_details(order_details_id,order_id,pizza_id,quantity)
FROM 'D:\AI & ML\SQL\SQL_Questions\Pizza Sales DB-20260429T090046Z-3-001_1\Pizza Sales DB\order_details.csv'
DELIMITER ','
CSV HEADER ; 

SELECT * FROM order_details;


-- 2 data file


CREATE TABLE orders(

	order_id INT PRIMARY KEY,
	date DATE,
	time TIME
);

COPY orders(order_id,date,time)
FROM 'D:\AI & ML\SQL\SQL_Questions\Pizza Sales DB-20260429T090046Z-3-001_1\Pizza Sales DB\orders.csv'
DELIMITER ','
CSV HEADER ; 

SELECT * FROM orders;

-- 3 data file.

DROP TABLE IF EXISTS pizza_sales;
CREATE TABLE pizza_sales(

	pizza_id INT PRIMARY KEY,
	order_id INT,
	pizza_name_id VARCHAR(20),
	quantity SMALLINT,
	order_date DATE,
	order_time TIME,
	unit_price NUMERIC(12,2),
	total_price NUMERIC(12,2),
	pizza_size CHAR(10),
	pizza_category CHAR(20),
	pizza_ingredients VARCHAR,
	pizza_name CHAR(60)

);

COPY pizza_sales(pizza_id, order_id, pizza_name_id, quantity, order_date, order_time, unit_price, total_price, pizza_size, pizza_category, pizza_ingredients, pizza_name
)
FROM 'D:\AI & ML\SQL\SQL_Questions\Pizza Sales DB-20260429T090046Z-3-001_1\Pizza Sales DB\pizza_sales.csv'
DELIMITER ','
CSV HEADER ; 

SELECT * FROM pizza_sales;




-- 4 data set


DROP TABLE IF EXISTS pizza_types;

CREATE TABLE pizza_types(
	pizza_type_id VARCHAR(60),
	name VARCHAR(60),
	category VARCHAR(60),
	ingredients VARCHAR(150)
);

COPY pizza_types(pizza_type_id,name,category,ingredients)

FROM 'D:\AI & ML\SQL\SQL_Questions\Pizza Sales DB-20260429T090046Z-3-001_1\Pizza Sales DB\pizza_typess.csv'
DELIMITER ','
CSV HEADER ; 

SELECT * FROM pizza_types;


-- 5 Data set.

DROP TABLE IF EXISTS pizzas;

CREATE TABLE pizzas(
	pizza_id VARCHAR(50),
	pizza_type_id VARCHAR(50),
	size CHAR(10),
	price NUMERIC(20,2)
);

COPY pizzas(pizza_id,pizza_type_id,size,price)

FROM 'D:\AI & ML\SQL\SQL_Questions\Pizza Sales DB-20260429T090046Z-3-001_1\Pizza Sales DB\pizzas.csv'
DELIMITER ','
CSV HEADER ; 

SELECT * FROM pizzas;



-- *Questions*.

-- Q1 Write a query to display all columns and rows from the orders table. 

SELECT * FROM orders;


-- 2. Write a query to display only the order_id and order_date from the orders table. 

SELECT order_id,date FROM orders;


-- 3. Write a query to list all distinct pizza categories available in the pizza_types table. 

SELECT DISTINCT category FROM pizza_types;



-- 4. Write a query to display all pizzas along with their price from the pizzas table. 

SELECT DISTINCT pizza_type_id , price FROM pizzas;


-- 5. Write a query to find all pizzas that have a price greater than 10. 

SELECT pizzas,price FROM pizzas 
WHERE price > 10;


-- 6. Write a query to display all pizza names that belong to the 'Veggie'category. 

SELECT name,category FROM pizza_types
WHERE category = 'Veggie';



-- 7. Write a query to count the total number of orders placed. 

SELECT COUNT(order_id) FROM orders;


-- 8. Write a query to list all available pizza sizes from the pizzas table. 

SELECT size FROM pizzas
GROUP BY size ;


-- 9. Write a query to display all pizzas sorted by price in descending order.

SELECT pizza_type_id , price FROM pizzas
ORDER BY price DESC;



-- 10. Write a query to find all pizzas whose name starts with the letter 'M'. 

SELECT pizza_name_id FROM pizza_sales
WHERE pizza_name_id LIKE 'M%' OR pizza_name_id  LIKE 'm%';

SELECT pizza_name_id FROM pizza_sales
WHERE pizza_name_id ILIKE 'M%';           -- Here ILIKE support both case cpital or small letter.

 
-- 11. Write a query to calculate the total quantity of pizzas sold.

SELECT sum(quantity) AS Total_quantity FROM order_details;


-- 12. Write a query to calculate the total revenue generated from pizza sales. 

SELECT SUM(TOTAL_PRICE) AS Total_revenew FROM PIZZA_SALES;


-- 13. Write a query to find the top 5 most expensive pizzas.

SELECT  pizza_id, price FROM pizzas
ORDER BY price DESC
LIMIT 5;


-- 14. Write a query to calculate the total number of orders placed on each date.

SELECT date,COUNT(order_id) AS Total_num_or_orders FROM orders
GROUP BY date ;


-- 15. Write a query to find the total quantity sold for each pizza. 

SELECT pizza_name_id, COUNT(quantity) AS Total_quan_sold FROM pizza_sales
GROUP BY pizza_name_id
order by Total_quan_sold desc;


-- 16. Write a query to calculate the average price of pizzas. 

SELECT ROUND(AVG(price),2) AS Avarage_price FROM pizzas;



-- 17. Write a query to calculate total revenue generated for each pizza category.

SELECT piz_t.category, SUM(p.price) AS  Total_rev FROM pizzas p
JOIN pizza_types piz_t
	ON piz_t.pizza_type_id = p.pizza_type_id
GROUP BY piz_t.category ;


-- 18. Write a query to find all pizzas with price between 15 and 20.

SELECT pizza_type_id, price FROM pizzas
WHERE price BETWEEN 15 AND 21;



-- 19. Write a query to count the number of pizzas available in each category. 

SELECT category, COUNT(pizza_type_id) AS pizza_Available FROM pizza_types
GROUP BY category
ORDER BY pizza_Available DESC;


-- 20. Write a query to find the most commonly ordered pizza size. 

SELECT pizza_size, COUNT(order_id) AS Commonly_ord_pizza_size FROM pizza_sales
GROUP BY pizza_size
ORDER BY Commonly_ord_pizza_size DESC
LIMIT 1;

21. Write a query to calculate total revenue generated by each pizza 
size. 
22. Write a query to display each order along with the total quantity of 
pizzas in that order. 
23. Write a query to find pizzas that have never been ordered. 
24. Write a query to calculate the total number of orders placed in 
each hour of the day. 
25. Write a query to find the top 5 best-selling pizzas based on 
quantity sold. 
26. Write a query to find the pizza that has generated the highest total 
revenue. 
27. Write a query to find the top 3 pizza categories based on total 
revenue. 
28. Write a query to calculate daily total revenue. 
29. Write a query to identify the peak hours during which the maximum 
number of orders are placed. 
30. Write a query to find the date with the highest number of orders. 
31. Write a query to calculate cumulative revenue over time (day-wise 
running total). 
32. Write a query to identify pizzas that contribute to the top 80% of 
total revenue (Pareto analysis). 
33. Write a query to rank all pizzas based on total quantity sold using 
a window function. 
34. Write a query to find the second highest selling pizza. 
35. Write a query to find pizzas whose total sales are above the 
average sales of all pizzas. 
36. Write a query to find the best-selling pizza in each category. 
37. Write a query to calculate month-wise total revenue. 
38. Write a query to find the least ordered pizza. 
39. Write a query to calculate the percentage contribution of each 
pizza to total revenue. 
40. Write a query to find the top 3 pizzas in each category based on 
revenue using window functions.











