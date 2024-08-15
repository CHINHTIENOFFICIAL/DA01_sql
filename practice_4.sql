--BÀI 1
SELECT 
sum(CASE 
when device_type like 'laptop' then 1 else 0
end) as laptop_views,
sum(CASE
when device_type in ('tablet','phone') then 1 else 0
end) as mobile_views
FROM viewership
--BÀI 2
select x,y,z,
case 
when (x+y>z) and (y+z>x) and (x+z>y) then 'Yes'
else 'No'
end as triangle
from Triangle
--BÀI 3
SELECT 
round(sum(CASE
when call_category like 'n/a' or call_category is NULL then 1 else 0
end)*100/count(*),1) ||'%' as kkk
FROM callers 
--BÀI 4
select name from Customer
where not referee_id = 2 or referee_id is null
--BÀI 5
select survived,
sum(case 
when pclass = 1 then 1 else 0
end) as first_class,
sum(
case
when pclass = 2 then 1 else 0
end) as second_class,
sum(case
when pclass = 3 then 1 else 0
end) as third_class
from titanic
group by survived




