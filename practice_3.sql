--BÀI 1 
select Name from STUDENTS
where Marks > 75
order  by right(Name,3), ID
--BÀI 2
select user_id, 
concat(upper(left(name,1)),lower(right(name,length(name)-1))) as name
from Users
--BÀI 3
SELECT manufacturer,
'$'||round(sum(total_sales),-6)/10^6 ||' million' as "Tổng doanh thu"
FROM pharmacy_sales
group by manufacturer
order by manufacturer, "Tổng doanh thu"
--BÀI 4
SELECT extract(month from submit_date) as month,
product_id,
round(avg(stars),2) as stars
FROM reviews
group by extract(month from submit_date),product_id
order by month, product_id
--BÀI 5
SELECT sender_id,
count(message_id) as total_mess
FROM messages
where extract(month from sent_date) = 8 
and extract(year from sent_date) = 2022
group by sender_id
order by count(message_id) desc
limit(2)
--BÀI 6
select tweet_id from Tweets
where length(content) >15
--BÀI 7
select activity_date as day,
count(distinct user_id) as active_users
from Activity
where activity_date between '2019-06-27' and '2019-07-26'
group by activity_date
--BÀI 8
select count(*) as employees_hired
from employees
where extract(month from joining_date) between 1 and 7
  and extract(year from joining_date) = 2022
--BÀI 9
select position('a' in first_name)
from worker
where first_name like 'Amitah'
--BÀI 10
select winery,
substring(title FROM length(winery) + 2 FOR 4)
from winemag_p2
where country = 'Macedonia'











