-- 1. What is the average cost to rent a film in the stores?
select avg(rental_rate) from film

-- 2. What is the average rental cost of films by rating? On average, what is the cheapest rating of films to rent?
--Most expensive?
select f.rating, avg(f.rental_rate) as "average rental rating" from film as f
group by rating
order by "average rental rating"

-- 3. How much would it cost to replace all the films in the database?
select sum(replacement_cost) as "Total replacement cost" from film

-- 4. How much would it cost to replace all the films in each ratings category?
select rating, sum(replacement_cost) from film as f
group by rating

-- 5. How long is the longest movie in the database? The shortest?
select max(length) as "Longest Movie", min(length) as "Shortest Movie"  from film
