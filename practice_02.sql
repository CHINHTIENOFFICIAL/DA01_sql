--BÀI 1
select distinct city from STATION
where ID%2=0
--BÀI 2
select 
(Count(CITY)) - (count(distinct CITY))
from STATION
--BÀI 3
--KHÓ NÊN SKIPIDI
--BÀI 4
SELECT 
round(cast(SUM(item_count*order_occurrences)/sum(item_count) as decimal),1) as mean
FROM items_per_order
--BÀI 5
SELECT candidate_id from candidates
where skill IN ('Python', 'Tableau', 'PostgreSQL' )
group by candidate_id
having count(candidate_id) = 3
--BÀI 6
SELECT user_id,
date(max(post_date)) - date(min(post_date)) as day_betwwen 
FROM posts
where post_date BETWEEN '2021-01-01' and '2022-01-01'
GROUP BY user_id
having count(post_id)>1
--BÀI 7
SELECT card_name,
max(issued_amount) - min(issued_amount) as diff
FROM monthly_cards_issued
GROUP BY card_name
order by diff DESC
--BÀI 8
SELECT manufacturer,  
abs(sum(cogs-total_sales)) as total_loss,
count(drug) as drug_count
FROM pharmacy_sales
where total_sales < cogs
group by manufacturer
order by total_loss desc
--BÀI 9
select * from Cinema
where id%2 = 1
and description not like 'boring'
order by rating desc
--BÀI 10
Select teacher_id,
count(distinct subject_id) as cnt
from Teacher 
group by teacher_id
--BÀI 11
select class from Courses
group by class
having count(student) >= 5
--BÀI 12
select user_id,
count(follower_id) as followers_count
from Followers
group by user_id






