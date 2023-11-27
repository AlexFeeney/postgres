--* Write a query to get the number of copies of a film title that exist in the inventory. 
--The results should look like those shown in the following table. 
--Your challenge is to use a subquery (a query embedded within another query) instead of a join.

select f.title, 
(select count(i.film_id) from inventory i where f.film_id = i.film_id) 
as numCopies
FROM film f

--create a view
create view title_count as 

	select f.title, 
	(select count(i.film_id) from inventory i where f.film_id = i.film_id) 
	as numCopies
	FROM film f56
	
	
--testing view by selecting records

select * from title_count

--find all that have 7 copes
select title, numcopies from title_count
where numcopies = 7