--select everything from the film table
SELECT * FROM film

--count the total amount of file_id's in the film table
SELECT COUNT(film_id) FROM film

--find the total count using an alis
SELECT COUNT(film_id) AS "Total Films"
FROM film

--group by rating and aggregate the film_id count
SELECT rating, COUNT(film_id) AS "Total films"
FROM film 
GROUP BY rating

--select the average rental duration and use an alis
SELECT AVG(rental_duration) AS "Average Rental Duration"
FROM film

--group the rental duration, average rental rate and give alias
SELECT rental_duration, AVG(rental_rate) AS "Average Rental duration / date"
from film
GROUP BY rental_duration

--find the rows wih the minimum rental rate
SELECT rental_duration, MIN(rental_rate) AS "min rental rate"
FROM film
GROUP BY rental_duration

--find the rows with the maximum rental rate
SELECT rental_duration, MAX(rental_rate) AS maxRentalRate
FROM film
GROUP By rental_duration

