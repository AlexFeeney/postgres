--group by functions
select rental_rate, avg(length) as av_length
from film 
group by rental_rate
order by av_length

--round the reuslts to use only two decimal places
select rental_rate, round(avg(length),2) as av_length
from film
group by rental_rate
order by av_length

--switch above results to desc
select rental_rate, round(avg(length),2) as av_length
from film
group by rental_rate
order by av_length desc

--limit to 5 results
select rental_rate, round(avg(length),2) as av_length
from film
group by rental_rate
order by av_length desc
limit 5

