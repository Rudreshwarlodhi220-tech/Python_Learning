use growtech;

select * from college;

select min(parent_age) from college;

SELECT 
    MIN(parent_age) AS min_parent_Age
FROM
    college;
    
SELECT 
    max(parent_age) AS max_parent_Age
FROM
    college;
    
SELECT 
    count(gender) AS total_gender_count
FROM
    college;
    
SELECT 
    sum(parent_salary) AS TotalSalary
FROM
    college;

SELECT 
    MIN(parent_salary) AS min_parent_Salary,
    MAX(parent_salary) AS max_parent_Salary,
    AVG(parent_salary) AS AverageSalary,
    SUM(parent_salary) AS TotalSalary
FROM
    college;
    
SELECT 
    avg(parent_salary) AS AverageSalary
FROM
    college;
    
-- alter statement

select * from student;

-- renaming table
alter table student
rename Candidate;

-- Renaming existing column name
alter table Candidate
rename column Location to City;

alter table candidate
rename column Name to FirstName,
rename column Contact to PhoneNumber;

-- for adding new column
alter table candidate
add ParentName varchar(20);

alter table candidate
add MotherName varchar(30),
add Qualification varchar(30);

-- column drop

alter table candidate
drop MotherName;

alter table candidate
drop ParentName,
drop Qualification;

-- change the datatype of existing column

alter table candidate
modify Age float;

alter table candidate
modify ID varchar(30);

-- modify constraints 

alter table Candidate
drop ID;

alter table Candidate
add EmpID Varchar(20);

insert into candidate (EmpID) values
(1),
(2),
(3),
(4),
(5);

select * from candidate;

alter table candidate
add Primary key (EmpID);

select * from courses;

alter table courses
add Primary key (Course_id);

alter table courses
drop Primary key,
modify Course_id int not null;

update courses
set course_Name = "data Science";

update courses
set Price = 50000;

update courses
set course_Name = "AI_ML",
Price = 60000;

-- drop 

drop table courses;

select * from courses;

truncate table candidate;




