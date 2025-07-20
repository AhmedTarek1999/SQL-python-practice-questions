-- Query the average population of all cities in CITY where District is California.
SELECT 
  AVG(POPULATION) as Average_Population
FROM CITY
WHERE DISTRICT = 'California';
