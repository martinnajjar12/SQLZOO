-- Select the code which gives the name of countries beginning with U
SELECT name
  FROM world
 WHERE name LIKE 'U%';

-- Select the code which shows just the population of United Kingdom?
SELECT population
  FROM world
 WHERE name = 'United Kingdom';

-- 'name' should be name
SELECT continent 
  FROM world 
 WHERE 'name' = 'France';

-- Nauru 990 is the output of this:
SELECT name, population / 10 
  FROM world 
 WHERE population < 10000;

-- Select the code which would reveal the name and population of countries in Europe and Asia
SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia');

-- Select the code which would give two rows
SELECT name
  FROM world
 WHERE name IN ('Cuba', 'Togo');

-- Brazil and Colombia is the right answer:
SELECT name FROM world
 WHERE continent = 'South America'
   AND population > 40000000;
