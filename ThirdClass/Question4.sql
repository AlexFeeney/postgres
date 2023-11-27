--1. Create a `customer` table with a customer first name and customer last name.

create table customer(
	customer_id int primary key,
	first_name varchar(100) not null, 
	last_name varchar(100) not null
)

--2. Populate the `customer` table with customer names.
insert into customer (customer_id, first_name, last_name)
values (1,'alex','test'), 
		(2,'alex2', 'test2')
		
--verify data 
select * from customer

-- Create a `customer_email` table with a foreign key that references a field in the original `customer` table.
create table customer_email (
	email_id int  primary key, 
	customer_id int not null,
	foreign key (customer_id) references customer(customer_id),
	email varchar(100) not null
)

--popualate table with data 
insert into customer_email (email_id,customer_id,email)
values (1, 2,'alexfeeney@email.com'),
		(2,2,'rtesting@email.com')
		
--select to verify data
select * from customer_email


--5. Create a `customer_phone` table with a foreign key that references a field in the original `customer` table.
create table customer_phone(
	phone_id int primary key, 
	customer_id int not null,
	foreign key (customer_id) references customer(customer_id),
	phone varchar(50) not null

)
--insert some values
insert into customer_phone(phone_id, customer_id, phone)
values (1,2,'123000'), 
	   (2,2,'1039210391').
	   
	   
--7. To test your understanding of foreign keys, write a query to insert data in
--the `customer_phone` table by using a reference ID that does not exist in the `customer` table.

insert into customer_phone(phone_id, customer_id, phone)
values (1,10,'123000'), 
--this insert will fail as 10 is not a customer_id in the customer table

--8. Join all three tables.
select * from customer c
left join customer_email cm
on c.customer_id = cm.customer_id
left join customer_phone cp
on c.customer_id = cp.customer_id
order by c.customer_id, cm.email_id, cp.phone_id desc
