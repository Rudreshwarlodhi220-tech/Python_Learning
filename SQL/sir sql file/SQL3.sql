use growtech;

select * from college;

-- where clause

SELECT 
    *
FROM
    college
WHERE
    residence = 'Urban';

select * from college
where residence != "Urban";

select * from college
where residence = "Urban";

SELECT 
    *
FROM
    college
WHERE
    parent_age > 50;
    
SELECT 
    *
FROM
    college
WHERE
    parent_age >= 50;
    
SELECT 
    *
FROM
    college
WHERE
    parent_age < 50;
    
SELECT 
    *
FROM
    college
WHERE
    parent_age <= 50;
    
SELECT 
    *
FROM
    college
WHERE
    parent_age > 50 AND house_area > 70;
    
SELECT 
    *
FROM
    college
WHERE
    parent_age > 50 OR house_area > 70;
    
SELECT 
    school_accreditation, residence, parent_age, house_area
FROM
    college
WHERE
    parent_age > 50 OR house_area > 70;
    
SELECT 
    MAX(parent_salary) AS MaximumSalary
FROM
    college
WHERE
    residence = 'Urban';

SELECT 
    MAX(parent_salary) AS MaximumSalary,
    Sum(parent_salary) AS TotalSalary
FROM
    college
WHERE
    residence = 'Urban';
    
SELECT 
    MAX(parent_salary) AS MaximumSalary,
    Sum(parent_salary) AS TotalSalary
FROM
    college
WHERE
    residence = 'Rural';

SELECT 
	COUNT(parent_salary) as TotalCount,
    MAX(parent_salary) AS MaximumSalary,
    Sum(parent_salary) AS TotalSalary
FROM
    college
WHERE
    residence = 'Rural';
    
SELECT 
	COUNT(parent_salary) as TotalCount,
    MAX(parent_salary) AS MaximumSalary,
    Sum(parent_salary) AS TotalSalary
FROM
    college
WHERE
    residence = 'Urban';
    
SELECT 
	COUNT(parent_salary) as TotalCount,
    MAX(parent_salary) AS MaximumSalary,
    Sum(parent_salary) AS TotalSalary
FROM
    college
WHERE
    gender = 'male';

SELECT 
    *
FROM
    college
WHERE
    interest = 'Very Interested'
        OR interest = 'Interested';
        
SELECT 
    *
FROM
    college
WHERE
    interest IN ('Very Interested');
    
SELECT 
    *
FROM
    college
WHERE
    interest IN ('Very Interested',"Interested");
    
SELECT 
    *
FROM
    college
WHERE
    interest IN ('Very Interested',"Interested", "Uncertain");
    
SELECT 
    *
FROM
    college
WHERE
    interest NOT IN ('Very Interested',"Interested", "Uncertain");
    
SELECT 
    *
FROM
    college
WHERE
    interest NOT IN ('Very Interested',"Interested", "Uncertain")
ORDER BY 
	parent_age;
    
SELECT 
    *
FROM
    college
WHERE
    interest NOT IN ('Very Interested',"Interested", "Uncertain")
ORDER BY 
	parent_age ASC;

SELECT 
    *
FROM
    college
WHERE
    interest NOT IN ('Very Interested',"Interested", "Uncertain")
ORDER BY 
	parent_age DESC;
    
    
select gender,max(parent_salary) as parent_salary
from college
group by gender;

select gender,min(parent_salary) as parent_salary
from college
group by gender;

select gender,avg(parent_salary) as parent_salary
from college
group by gender;

select gender,type_school, avg(parent_salary) as parent_salary
from college
group by gender,type_school
order by parent_salary;

SELECT 
    gender, type_school, AVG(parent_salary) AS parent_salary
FROM
    college
GROUP BY gender , type_school
ORDER BY parent_salary DESC;

SELECT 
   interest, AVG(house_area) AS house_area
FROM
    college
GROUP BY interest
ORDER BY house_area DESC;

SELECT 
    interest, AVG(house_area) AS house_area
FROM
    college
GROUP BY interest
HAVING house_area > 70
ORDER BY house_area DESC;

SELECT 
    interest, AVG(house_area) AS house_area
FROM
    college
GROUP BY interest
HAVING house_area < 70
ORDER BY house_area DESC;