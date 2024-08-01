--BÀI 1
select product_id from Products
where low_fats like 'Y' and recyclable like 'Y'
--BÀI 2
select NAME from CITY
where POPULATION > 120000 and COUNTRYCODE = 'USA'
--BÀI 3
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN'
--BÀI 4
SELECT CITY, STATE FROM STATION
--BÀI 5 
SELECT CITY FROM STATION
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%'  OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%'
--BÀI 6 
SELECT Distinct CITY FROM STATION 
WHERE CITY like '%a' or CITY like '%e' or CITY like '%i' or CITY like '%o' or CITY like '%u' 
--BÀI 7
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%'  AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%'
--BÀI 8
select name from Employee
order by name 
--BÀI 9
select name from Employee
where salary > 2000 and months <10
order by employee_id
--BÀI 10
select name from Customer
where not referee_id = 2 or referee_id is null
--BÀI 11
select name, population, area from World
where area >= 3000000 or population >= 25000000
--BÀI 12
select distinct author_id as id from Views
where author_id = viewer_id 
order by author_id
--BÀI 13
SELECT part, assembly_step FROM parts_assembly
WHERE finish_date IS NULL
--BÀI 14
select * from lyft_drivers
where yearly_salary <=30000 or yearly_salary >=70000
--BÀi 15
select * from uber_advertising
where money_spent .=100000 and year = 2019

-----------------------------------
