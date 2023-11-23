--Determine the count of actor first names with the names ordered in descending order.
select first_name, count(first_name) from actor
group by first_name 
order by first_name desc

--Determine the average rental duration for each rating rounded to two decimals. Order these in ascending order.
select rating, round(avg(rental_duration),2) as avgRentalDuration from film
group by rating
order by avgRentalDuration

--Determine the top 10 average replacement costs for movies, ordered by their length.
select  f.length, round(avg(f.replacement_cost),2) as avReplCost from film as f
group by f.length
order by avReplCost desc
limit 10

--## Bonus
--Using the city and country tables, determine the count of countries in descending order.
select cc.country, count(city_id) as city_count
from city as c
left join country as cc
on c.country_id = cc.country_id
group by cc.country
order by city_count desc
