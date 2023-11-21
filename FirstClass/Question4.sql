--remove existing people table

DROP TABLE people


--recreate pet table , new cols.
CREATE TABLE people(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(30) NOT NULL, 
	has_pet BOOLEAN DEFAULT false, 
	pet_type VARCHAR(30) NOT NULL, 
	pet_name VARCHAR(30), 
	pet_age INT

)

--check with a query , select *

SELECT * FROM people --no records returned yet

--insert some records, 
INSERT INTO people (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty', 10),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Peter', true, 'cat', 'Franklin', 2),
  ('Dave', true, 'dog', 'Queso', 1),
  ('Dave', true, 'dog', 'Pringles', 7);
  
  
--check data
SELECT * FROM people

--find dave

SELECT * FROM people
WHERE name = 'Dave'

--update a single row
UPDATE people
SET has_pet = true, pet_name = 'Rocket', pet_age = 8 
WHERE id = 6

--select to check update
SELECT * FROM people
WHERE id = 6

--delete the duplicate record

DELETE FROM people
WHERE id = 3

--check data

SELECT * FROM people









