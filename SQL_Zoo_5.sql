-- 1. Show the total population of the world.

SELECT SUM(population)
FROM world

-- 2. List all the continents - just once each.

SELECT distinct(continent)
FROM world

-- 3.  Give the total GDP of Africa

SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa'

-- 4.  How many countries have an area of at least 1000000

SELECT count(name)
FROM world
WHERE area > 1000000

-- 5.  What is the total population of ('Estonia', 'Latvia', 'Lithuania')

SELECT SUM(population)
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

-- 6.  For each continent show the continent and number of countries.

SELECT continent, COUNT(name)
FROM world
GROUP BY continent
