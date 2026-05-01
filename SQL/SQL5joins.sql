create database ecommerce;

use ecommerce;

CREATE TABLE products (
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_number VARCHAR(20),
    product_name VARCHAR(100),
    customer_name VARCHAR(100),
    quantity INT,
    order_date DATE
);

CREATE TABLE payments (
    order_number VARCHAR(20),
    customer_name VARCHAR(100),
    payment_mode VARCHAR(50),
    payment_status VARCHAR(50),
    payment_date DATE
);

INSERT INTO products VALUES
('Laptop', 'Electronics', 60000),
('Mobile', 'Electronics', 20000),
('Tablet', 'Electronics', 30000),
('Monitor', 'Electronics', 15000),
('Keyboard', 'Accessories', 1000),
('Mouse', 'Accessories', 500),
('Printer', 'Electronics', 12000),
('Scanner', 'Electronics', 8000),
('Speaker', 'Accessories', 3000),
('Headphones', 'Accessories', 2500),
('Webcam', 'Accessories', 2000),
('Hard Disk', 'Storage', 4000),
('SSD', 'Storage', 7000),
('Router', 'Networking', 3500),
('Smart Watch', 'Electronics', 10000);

INSERT INTO orders VALUES
('ORD101', 'Laptop', 'Atul', 1, '2026-04-01'),
('ORD102', 'Mobile', 'Rahul', 2, '2026-04-02'),
('ORD103', 'Tablet', 'Priya', 1, '2026-04-03'),
('ORD104', 'Monitor', 'Amit', 1, '2026-04-04'),
('ORD105', 'Keyboard', 'Neha', 3, '2026-04-05'),
('ORD106', 'Mouse', 'Karan', 2, '2026-04-06'),
('ORD107', 'Printer', 'Sneha', 1, '2026-04-07'),
('ORD108', 'Scanner', 'Rohit', 1, '2026-04-08'),
('ORD109', 'Speaker', 'Pooja', 2, '2026-04-09'),
('ORD110', 'Headphones', 'Vikas', 1, '2026-04-10'),
('ORD111', 'Webcam', 'Anjali', 1, '2026-04-11'),
('ORD112', 'Hard Disk', 'Manish', 2, '2026-04-12'),
('ORD113', 'SSD', 'Suresh', 1, '2026-04-13'),
('ORD114', 'Router', 'Kavita', 1, '2026-04-14'),
('ORD115', 'Smart Watch', 'Deepak', 1, '2026-04-15');

INSERT INTO payments VALUES
('ORD101', 'Atul', 'UPI', 'Completed', '2026-04-01'),
('ORD102', 'Rahul', 'Card', 'Completed', '2026-04-02'),
('ORD103', 'Priya', 'Cash', 'Pending', '2026-04-03'),
('ORD104', 'Amit', 'UPI', 'Completed', '2026-04-04'),
('ORD105', 'Neha', 'Card', 'Failed', '2026-04-05'),
('ORD106', 'Karan', 'UPI', 'Completed', '2026-04-06'),
('ORD107', 'Sneha', 'Cash', 'Completed', '2026-04-07'),
('ORD108', 'Rohit', 'Card', 'Pending', '2026-04-08'),
('ORD109', 'Pooja', 'UPI', 'Completed', '2026-04-09'),
('ORD110', 'Vikas', 'Cash', 'Completed', '2026-04-10'),
('ORD111', 'Anjali', 'Card', 'Completed', '2026-04-11'),
('ORD112', 'Manish', 'UPI', 'Failed', '2026-04-12'),
('ORD113', 'Suresh', 'Card', 'Completed', '2026-04-13'),
('ORD114', 'Kavita', 'Cash', 'Completed', '2026-04-14'),
('ORD115', 'Deepak', 'UPI', 'Pending', '2026-04-15');


SELECT 
    orders.order_number,
    orders.product_name,
    orders.customer_name,
    payments.payment_mode,
    payments.payment_status
FROM
    orders
        JOIN
    payments ON orders.order_number = payments.order_number;


SELECT 
    O.order_number,
    O.product_name,
    o.customer_name,
    p.payment_mode,
    p.payment_status
FROM
    orders as o
        JOIN
    payments as p ON o.order_number = p.order_number;
    
SELECT 
    O.order_number,
    O.product_name,
    o.customer_name,
    p.payment_mode,
    p.payment_status
FROM
    orders as o
        INNER JOIN
    payments as p ON o.order_number = p.order_number;
    
SELECT 
    O.order_number,
    O.product_name,
    o.customer_name,
    p.payment_mode,
    p.payment_status
FROM
    orders as o
        RIGHT JOIN
    payments as p ON o.order_number = p.order_number;
    
SELECT 
    O.order_number,
    O.product_name,
    o.customer_name,
    p.payment_mode,
    p.payment_status
FROM
    orders as o
        LEFT JOIN
    payments as p ON o.order_number = p.order_number;

SELECT 
    O.order_number, O.product_name, o.customer_name,
    p.payment_mode,p.payment_status,
    pr.category, pr.price
FROM orders as o
INNER JOIN payments as p ON o.order_number = p.order_number
INNER JOIN Products as pr on o.product_Name = pr.product_name;