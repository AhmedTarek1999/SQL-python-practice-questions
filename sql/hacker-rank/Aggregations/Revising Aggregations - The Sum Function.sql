-- Query the total population of all cities in CITY where District is California.
SELECT 
  SUM(POPULATION) Total_Population
FROM CITY
WHERE DISTRICT = 'California'
