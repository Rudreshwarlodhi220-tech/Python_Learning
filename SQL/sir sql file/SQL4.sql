use growtech;

select * from college;

-- matching from start
select * from college
where residence like "Ur%";

select * from college
where interest like "le%";

-- matching from ending
select * from college
where interest like "%ed";

select * from college
where interest like "%Interested";

select * from college
where interest like "%ry Interested";

-- matching from both side

select * from college
where type_school like "%ad%";

select * from college
where gender like "Ma_e";

select * from college
where parent_age between 30 and 50;


-- limit and offset 

select * from college
limit 5;

select * from college
order by parent_age
limit 5;

select * from college
order by parent_age desc
limit 5;

select * from college
order by parent_age desc
limit 1;

-- second highest parent age
select * from college
order by parent_age desc
limit 1 offset 1;

select * from college
order by parent_age desc
limit 2 offset 1;

select * from college
order by parent_salary desc
limit 5;

select * from college
order by parent_salary desc
limit 1 offset 1;

select * from college
order by parent_salary asc
limit 1 offset 1;

select * from Superstoreorders;

select count(country) from Superstoreorders;

select count(distinct(country)) from Superstoreorders;

select country,sum(sales) as TotalSales
from superstoreorders
group by country;

select country,sum(sales) as TotalSales
from superstoreorders
group by country
order by TotalSales;

select country,sum(sales) as TotalSales
from superstoreorders
group by country
order by TotalSales desc;

select country,sum(sales) as TotalSales
from superstoreorders
group by country
order by TotalSales desc
limit 5;


-- second highest sales 
select country,sum(sales) as TotalSales
from superstoreorders
group by country
order by TotalSales desc
limit 1 offset 1;

-- second lowest sales 
select country,sum(sales) as TotalSales
from superstoreorders
group by country
order by TotalSales asc
limit 1 offset 1;

