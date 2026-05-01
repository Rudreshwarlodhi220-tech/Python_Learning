CREATE TABLE college (
    type_school TEXT,
    school_accreditation TEXT,
    gender TEXT,
    interest TEXT,
    residence TEXT,
    parent_age INT,
    parent_salary NUMERIC,
    house_area NUMERIC,
    average_grades NUMERIC,
    parent_was_in_college BOOLEAN,
    will_go_to_college BOOLEAN
);

SELECT * FROM college;

SELECT MAX(parent_salary) AS Max_Parent_salary FROM college;
SELECT MIN(parent_salary) AS Min_Parent_sal FROM college;


ALTER TABLE college



CREATE TABLE zepto_v2 (
	Category VARCHAR(50),
	name VARCHAR(50),
	mrp INT,
	discountPercent INT,
	availableQuantity INT,
	discountedSellingPrice INT,
	weightInGms FLOAT,
	outOfStock BOOL,
	quantity INT
);

-- To change Table name .
SELECT * FROM 	zepto_v2;

ALTER TABLE zepto_v2
RENAME TO Zepto_dataset;

SELECT * FROM 	Zepto_dataset;


-- To change column name
ALTER TABLE Zepto_dataset
rename column discountedSellingPrice TO Dizcount_selling_priz;


-- Add New column.

ALTER TABLE Zepto_dataset
ADD COLUMN Aastha VARCHAR(59);
SELECT * FROM 	Zepto_dataset;

ALTER TABLE Zepto_dataset
ADD COLUMN order_id INT PRIMARY KEY;    -- In this case It doesn't allow because PRIMARY ke doesn't allow null values.

ALTER TABLE Zepto_dataset
ADD COLUMN order_id SERIAL PRIMARY KEY;

SELECT * FROM 	Zepto_dataset;


-- Drop column.
ALTER TABLE Zepto_dataset
DROP COLUMN discountpercent;
SELECT * FROM 	Zepto_dataset;


-- Change the data type of existing column.
ALTER TABLE Zepto_dataset
ALTER COLUMN  mrp TYPE FLOAT;
SELECT * FROM 	Zepto_dataset;

-- Modify constraints to another data type.
ALTER TABLE Zepto_dataset
ADD CONSTRAINT zepto_pk PRIMARY KEY (order_id);    -- throw error because already we have primary key . but Qurey is correcct.

SELECT * FROM 	Zepto_dataset;

-- Update 
UPDATE Zepto_dataset
SET name = 'Pyaj'
WHERE name = 'Onion';
SELECT * FROM 	Zepto_dataset;


UPDATE Zepto_dataset
SET name = 'Tomato_Hybrid'
WHERE name = 'Tomato Hybrid';


SELECT * FROM Zepto_dataset WHERE name = 'Pyaj';


-- Oparat & Where clause.


SELECT * FROM 	Zepto_dataset
WHERE category = 'Cooking Essentials' ;


SELECT * FROM Zepto_dataset
WHERE category != 'Cooking Essentials';


SELECT name,category FROM Zepto_dataset
WHERE dizcount_selling_priz > 10000;


SELECT name,category FROM Zepto_dataset
WHERE dizcount_selling_priz > 10000 and dizcount_selling_priz > 15000;


SELECT * FROM 	Zepto_dataset;

SELECT name,quantity FROM Zepto_dataset
WHERE name IN ('Tender Coconut','Potato','Lemon');


-- Use of Gorup by


SELECT outofstock , SUM(MRP) 
FROM Zepto_dataset
GROUP BY outofstock;




-- Wild card in SQL.  And It is a case sencitive...

-- matching from starting..
SELECT name FROM Zepto_dataset
WHERE NAME LIKE 'T%';


SELECT name FROM Zepto_dataset
WHERE NAME LIKE 'Top%';

SELECT name FROM Zepto_dataset
WHERE NAME not LIKE '%t%' and name not like '%T%';

-- matching form end.

SELECT name FROM Zepto_dataset
WHERE NAME LIKE '%t';

SELECT name FROM Zepto_dataset
WHERE NAME LIKE '%lt';


-- matching in the middle. matlab kahi par bhi ho..
SELECT NAME FROM zepto_dataset
WHERE name LIKE '%ab%';
