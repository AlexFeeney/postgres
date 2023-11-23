
--List the names and ID numbers of cities that are in the following list: 
--`Qalyub`, `Qinhuangdao`, `Qomsheh`, `Quilmes`.
select cc.city_id, cc.city from city cc
where cc.city in ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes')

--Display the districts in the above list of cities.
--**Hint:** Use the `address` and `city` tables.

select adrs.address_id, adrs.district, adrs.city_id, cit.city from address adrs
join city cit
on adrs.city_id = cit.city_id
where cit.city in ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes')

--## Bonus
--Using subqueries, find the first and last names of customers who reside in cities that begin with the letter *Q*.
--**Hint:** You will need to use three tables and more than one subquery.

select lower(cus.first_name),lower(cus.last_name), cit.city from customer cus
join address addr
on cus.address_id = addr.address_id
join city cit
on addr.city_id = cit.city_id
where cit.city like 'Q%'
order by 1 --order by column index