--create pgsql views

--creating and testing query 
select s.store_id, sum(amount) as gross from payment p
join rental r
on p.rental_id = r.rental_id
join inventory i
on i.inventory_id = r.inventory_id
join store s
on s.store_id = i.store_id
group by s.store_id

--creating the view
create view total_sales as 

	select s.store_id, sum(amount) as gross from payment p
	join rental r
	on p.rental_id = r.rental_id
	join inventory i
	on i.inventory_id = r.inventory_id
	join store s
	on s.store_id = i.store_id
	group by s.store_id
	
--selecting from the view
select * from total_sales

--if you wanted to drop
drop view total_sales
	