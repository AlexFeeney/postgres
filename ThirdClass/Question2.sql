--normalise data and create owner and pet table so data is in 2nf 	

--owner table creation
create table owners (
	owner_id int primary key, 
	owner_name varchar(100) not null
)



--create pet table
create table pets(
	pet_id int primary key, 
	pet_name varchar(255) not null, 
	pet_tye varchar(255) not null, 
	owner_id int not null
)

--imported csv's , checking data imports
select * from pets
select * from owners
