--create the table

CREATE TABLE cities (

	 cities_city VARCHAR(30), 
	 cities_state VARCHAR(30), 
	 cities_population INT
)

--check for records
SELECT * FROM cities

--insert sample records
INSERT INTO cities (cities_city, cities_state, cities_population)
VALUES ('Brisbane', 'Queensland', 2280000),
    ('Melbourne', 'Victoria', 5078000),
    ('Perth', 'Western Australia', 1985000),
    ('Gold Coast', 'Queensland', 540559),
    ('Sydney', 'New South Wales', 5312000),
    ('Adelaide', 'South Australia', 1306000)


--selcet city column

SELECT cities_city FROM cities

-- bonus 1 find only the rows in queensland

SELECT cities_city, cities_state FROM cities
WHERE cities_state = 'Queensland'

--bonus 2 - find only with population les than 2million

SELECT cities_city, cities_state, cities_population FROM cities
WHERE cities_population < 2000000

--bonus 3 - filter to queens / pop < 1,000,000

SELECT cities_city, cities_state, cities_population FROM cities
WHERE cities_population < 1000000 AND cities_state = 'Queensland'



