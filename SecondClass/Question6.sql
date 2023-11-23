--first we are finding the title and id for the movie early home
select title, film_id
from film
where title = 'EARLY HOME'
--results id = 268

--using the above result find the inventory item
select * from inventory
where film_id = 268


--find using a join
select i.inventory_id, i.film_id, i.store_id, i.last_update
from inventory i
join film f 
on i.film_id = f.film_id
where f.title = 'EARLY HOME'

--find using a sub query 
select * from inventory
where film_id in 
(select film_id from film where title = 'EARLY HOME')

