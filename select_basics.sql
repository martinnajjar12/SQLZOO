-- Select the code which produces this table
SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000;

-- This will retrieve 'Albania', 'Algeria' and their population
SELECT name, population
  FROM world
 WHERE name LIKE "Al%";

-- Select the code which shows the countries that end in A or L
SELECT name
  FROM world
 WHERE name LIKE '%a' OR name LIKE '%l';

-- This will retrieve 'Italy', 'Malta', 'Spain' and another column with their name.length
SELECT name,length(name)
  FROM world
 WHERE length(name)=5 and region='Europe';

-- This will retrieve 'Andora' with duplicated area '936'
SELECT name, area*2
  FROM world
 WHERE population = 64000;

-- Select the code that would show the countries with an area larger than 50000 and a population smaller than 10000000
SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000;

-- Select the code that shows the population density of China, Australia, Nigeria and France
SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia');
