-- Create the names table
CREATE TABLE Names (
	i INT PRIMARY KEY,
	dep_id INT,
	line INT,
	name VARCHAR,
	status VARCHAR,
	inserted_by VARCHAR,
	insert_date DATE,
	updated_by VARCHAR,
	update_date DATE
);

-- Check data import
SELECT *
FROM names;

-- Create the commodity table
CREATE TABLE commodity (
	i INT PRIMARY KEY,
	dep_id INT,
	line INT,
	commod VARCHAR,
	code VARCHAR,
	commod_tp VARCHAR,
	commod_group VARCHAR,
	import VARCHAR,
	inserted_by VARCHAR,
	insert_date DATE,
	updated_by VARCHAR,
	update_date DATE
);

-- Check data import
SELECT *
FROM commodity limit 100



--perform an inner join on the two tables 
SELECT n.name, c.commod, c.commod_tp, c.commod_group
FROM names as n
INNER JOIN commodity as c
ON c.dep_id = n.dep_id

