-- Select the statement that shows the sum of population of all countries in 'Europe'
SELECT SUM(population) FROM bbc WHERE region = 'Europe';

-- Select the statement that shows the number of countries with population smaller than 150000
SELECT COUNT(name) FROM bbc WHERE population < 150000;

-- Select the list of core SQL aggregate functions
AVG(), COUNT(), MAX(), MIN(), SUM();

-- This code is invalid because of the use of WHERE function
SELECT region, SUM(area)
  FROM bbc 
 WHERE SUM(area) > 15000000 
 GROUP BY region;

-- Select the statement that shows the average population of 'Poland', 'Germany' and 'Denmark'
SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark');

-- Select the statement that shows the medium population density of each region
SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region;

-- Select the statement that shows the name and population density of the country with the largest population
SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc);

-- This code will retrieve Americas, Middle East, South America and South Asia with their sum of area
SELECT region, SUM(area) 
  FROM bbc 
 GROUP BY region 
 HAVING SUM(area)<= 20000000;
