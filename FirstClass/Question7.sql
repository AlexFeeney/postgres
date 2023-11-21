--create table
CREATE table movie_words_comparison (
	rater_id INT NOT NULL, 
	reference_title VARCHAR(250), 
	soft_attribute VARCHAR(100), 
	less_than VARCHAR(1000), 
	about_us VARCHAR(1000), 
	more_than VARCHAR(1000)
)

--imported data using the wizard from csv data directory


--select test (datalooks imported ok )
SELECT * FROM movie_words_comparison

--find all the home alone from reference title
SELECT * FROM movie_words_comparison
WHERE reference_title = 'Home Alone (1990)'
--result = 103 records

--find all where the rator is in the 10-15 range
SELECT * FROM movie_words_comparison
WHERE rater_id >= 10 AND rater_id <=15

--use distinct to check the above where is working 
SELECT DISTINCT rater_id FROM movie_words_comparison
WHERE rater_id >= 10 AND rater_id <=15
--looks okay returned 10/ 15 - expected result 

-- search for the word artsy or heartflet in soft_attribute
SELECT * FROM movie_words_comparison
WHERE soft_attribute LIKE '%artsy%' OR soft_attribute LIKE '%heartfelt%'


--create a query that will  collect all rows with a reference title of 'Batman (1989) ;/ scary'
SELECT * FROM movie_words_comparison 
WHERE reference_title = 'Batman (1989)' AND soft_attribute = 'scary'

--create a query that will collect all rows with a rater with 30-40 range and reference title of 'Home Alone (1990' and
--a soft attribute of 'arsty'

SELECT * FROM movie_words_comparison
WHERE rater_id >= 30 AND rater_id <=40 AND reference_title = 'Home Alone (1990)' AND soft_attribute = 'artsy'

















