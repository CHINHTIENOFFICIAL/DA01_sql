--BÀI 1
select b.CONTINENT,floor(AVG(a.POPULATION))
from CITY as a 
join COUNTRY as b 
on a.COUNTRYCODE = b.CODE
GROUP BY b.CONTINENT
--BÀI 2
select 
ROUND(
CAST(count(b.email_id)as decimal)/COUNT(a.email_id),2)
FROM
emails as a left join texts as b on a.email_id=b.email_id and b.signup_action='Confirmed'
--BÀI 3
SELECT age_bucket,
round(sum(CASE
  when activity_type like 'send' then time_spent
  else 0
  end)/sum(CASE
        when not activity_type like 'chat' then time_spent
        else 0
        end)*100,2) as send_perc,
round(sum(CASE
  when activity_type like 'open' then time_spent
  else 0
  end)/sum(CASE
        when not activity_type like 'chat' then time_spent
        else 0
        end)*100,2) as open_perc
FROM activities as a
FULL JOIN age_breakdown as b on a.user_id = b.user_id 
group by age_bucket
order by age_bucket
--BÀI 4
SELECT  customer_id
FROM customer_contracts as a  
join products as b  
on a.product_id = b.product_id 
group by customer_id
having count(distinct b.product_category)=3
--BÀI 5
select case
      when b.name is not null then b.employee_id
      else null
      end as employee_id
,b.name, count(b.employee_id) as reports_count,
ceiling(avg(a.age)) as average_age
from Employees as a
left join Employees as b on a.reports_to = b.employee_id
group by b.name
having name is not null
--BÀI 6
SELECT product_name,sum(b.unit) as unit
from Products as a
join Orders as b
on a.product_id = b.product_id
where extract(month from order_date) = 2
group by b.product_id
having sum(b.unit)>=100
--BÀI 7
SELECT a.page_id
from pages as a  
left join page_likes as b 
on a.page_id = b.page_id
where b.page_id is null













