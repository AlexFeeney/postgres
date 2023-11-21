--create people table
CREATE TABLE people (
	name VARCHAR(30) NOT NULL, 
	has_pet BOOLEAN DEFAULT false, 
	pet_type VARCHAR(10) NOT NULL, 
	pet_name VARCHAR(30), 
	pet_age INT
)
--select records from the table
SELECT * FROM people


--insert records into the table
INSERT INTO people (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty', 10),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Peter', true, 'cat', 'Franklin', 2),
  ('Dave', true, 'dog', 'Queso', 1)
  
  
--query a couple of fields. 
SELECT pet_name, pet_age FROM people


--grab unique pet name
SELECT DISTINCT pet_name from people


--select from where pet type = dog and age < 5
SELECT pet_type, pet_name, pet_age FROM people
WHERE pet_type = 'dog' AND pet_age < 5
