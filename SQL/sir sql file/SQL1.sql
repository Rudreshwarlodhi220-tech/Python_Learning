create database GrowTech;

show databases;

use GrowTech;

select * from actor;

select * from sakila.actor;

use sakila;

select * from actor;

SELECT 
    *
FROM
    address;
    
-- single line comment

/* This is 
an 
Multiline 
comment
*/

-- How can we create a table

use growtech;

create table Student1
(ID int,
Name varchar(40),
Age int,
Location varchar(40),
Contact bigint unique not null);

select * from Student;

insert into student values
(1,"Sujal",19,"Indore",9723853853);

insert into student (Name,Age,Location) values
("Sunaina",89,"Ujjain"),
("Vinit",25,"Shajapur");

select * from Student;
 