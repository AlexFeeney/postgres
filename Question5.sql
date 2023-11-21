--create table
CREATE TABLE programming_languages(
	id SERIAL PRIMARY KEY,
	language VARCHAR(20) NOT NULL, 
	rating INT
)

--select records to check
SELECT * FROM programming_languages

--insert records
INSERT INTO programming_languages (language, rating)
VALUES
  ('HTML', 95),
  ('JS', 99),
  ('JQuery', 98),
  ('MySQL', 70),
  ('MySQL', 70)

--check
SELECT * FROM programming_languages


--delete a duplicate mysql
DELETE FROM programming_languages
WHERE id = 5

--check that record has been removed. 
SELECT * FROM programming_languages

--insert a few of my own values. 

INSERT INTO programming_languages (language, rating)
VALUES
  ('Python', 3),
  ('Apex', 100)
  
--check 
SELECT * FROM programming_languages
  
--update js to javascript 
UPDATE programming_languages
SET language = 'JavaScript'
WHERE id = 2;
  
--update html rating to 90

UPDATE programming_languages
SET rating = 90
WHERE language = 'HTML'


--check 
SELECT * FROM programming_languages
 
--add column 
ALTER TABLE programming_languages
ADD expert BOOlEAN DEFAULT false
  
 
SELECT * FROM programming_languages
  
  
  
  
  
  

