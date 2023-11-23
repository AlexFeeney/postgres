--## Instructions
--* Using subqueries, identify all actors who appear in the film ALTER VICTORY in the `pagila` database.

select a.actor_id, a.first_name, a.last_name
from actor a
where actor_id in (
	select actor_id from film_actor fm
	where fm.film_id in (
		select f.film_id from film f
		where f.title = 'ALTER VICTORY' )
	)

--* Using subqueries, display the titles of films that the employee Jon Stephens rented to customers.
select title from film 
where film_id in (
	select film_id from inventory i where i.inventory_id in (
		select inventory_id from rental where staff_id in (
			select staff_id from staff
			where first_name = 'Jon' and last_name = 'Stephens'
			)
		)
	)



