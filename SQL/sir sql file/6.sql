use growtech;

select * from college;

select min(house_area), max(house_area), avg(house_area)
from college;

select residence,house_area,
case
when house_area <=50 then "Poor Class"
when house_area <=100 then "Middle Class"
when house_area > 100 then "Upper Class"
end as Class
from college;

select * ,
case
when house_area <=50 then "Poor Class"
when house_area <=100 then "Middle Class"
when house_area > 100 then "Upper Class"
end as Class
from college;

-- subquery

select avg(house_area) from college;

select residence, house_area
from college 
where house_area > (select avg(house_area) from college);

select residence, house_area
from college 
where house_area < (select avg(house_area) from college);

use world;
SELECT 
    Name, SurfaceArea
FROM
    country
WHERE
    SurfaceArea > (SELECT 
            SurfaceArea
        FROM
            country
        WHERE
            Name = 'India');
            
SELECT 
    Name, SurfaceArea
FROM
    country
WHERE
    SurfaceArea < (SELECT 
            SurfaceArea
        FROM
            country
        WHERE
            Name = 'India');
            
SELECT 
    Name, Population
FROM
    country
WHERE
    Population > (SELECT 
            Population
        FROM
            country
        WHERE
            Name = 'India');
            
SELECT 
    Name, Population
FROM
    country
WHERE
    Population < (SELECT 
            Population
        FROM
            country
        WHERE
            Name = 'India');
            
            
SELECT 
    Name, population, continent,avg(population)
FROM
    country
WHERE
     (SELECT 
            AVG(population)
        FROM
            country
            WHERE continent = "asia");
        
        
        
 use growtech;
 
select * from college;

select gender, upper(gender) as Update_gender
from college;

select gender, lower(gender) as Update_gender
from college;

select gender, length(gender) as length
from college;

SELECT 
    type_school, residence, CONCAT(type_school, ' ', residence)
FROM
    college;
    
SELECT 
    type_school,
    residence,
    CONCAT(type_school, ' ', residence) AS ConcateColumn
FROM
    college;
    
select interest, instr(Interest,"interested") as position
from college;

select now();

select curdate();

select curtime();

select * from superstoreorders;

select order_date, dayname(order_date)
from superstoreorders;

select dayname(curdate());

select weekday(curdate());

select week(curdate());

select quarter(curdate());

select year(curdate());

select month(curdate());

select date(curdate());

select datediff(curdate(),"2024-04-30");

select timestampdiff(year,curtime(),"2024-04-30");

select timestampdiff(year,"2024-04-30",curtime());

select timestampdiff(month,"2024-04-30",curtime());

select timestampdiff(hour,"2024-04-30",curtime());

select timestampdiff(minute,"2024-04-30",curtime());

select timestampdiff(second,"2024-04-30",curtime());

select school_accreditation, gender,
avg(average_grades) over(partition by gender) as average_grades
from college;

select school_accreditation, gender,
min(average_grades) over(partition by gender) as min_grades
from college;

select school_accreditation, gender,
min(average_grades) over(partition by gender) as min_grades,
max(average_grades) over(partition by gender) as max_grades,
sum(average_grades) over(partition by gender) as sum_grades,
avg(average_grades) over(partition by gender) as avg_grades,
count(average_grades) over(partition by gender) as count_grades
from college;

select *,
min(average_grades) over(partition by gender) as min_grades,
max(average_grades) over(partition by gender) as max_grades,
sum(average_grades) over(partition by gender) as sum_grades,
avg(average_grades) over(partition by gender) as avg_grades,
count(average_grades) over(partition by gender) as count_grades
from college;