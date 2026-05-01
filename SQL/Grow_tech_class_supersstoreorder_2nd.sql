DROP TABLE  IF EXISTS superstoreorder;
CREATE TABLE superstoreorder (
    order_id        VARCHAR(20),
    order_date      DATE,
    ship_date       DATE,
    ship_mode       VARCHAR(20),
    customer_name   VARCHAR(100),
    segment         VARCHAR(50),
    state           VARCHAR(50),
    country         VARCHAR(50),
    market          VARCHAR(50),
    region          VARCHAR(50),
    product_id      VARCHAR(20),
    category        VARCHAR(50),
    sub_category    VARCHAR(50),
    product_name    VARCHAR(200),
    sales           NUMERIC(12,2),
    quantity        INT,
    discount        NUMERIC(4,2),
    profit          NUMERIC(12,2),
    shipping_cost   NUMERIC(12,2),
    order_priority  VARCHAR(20),
    year            INT
);

COPY superstoreorder(order_id,order_date,ship_date,ship_mode,customer_name,segment,state,country,market,region,product_id,category,sub_category,product_name,sales,quantity,discount,profit,shipping_cost,order_priority,year
)
FROM 'D:\AI & ML\SQL\superstoreorders.csv' 
DELIMITER ','
CSV HEADER ;

SELECT * FROM superstoreorder;



















