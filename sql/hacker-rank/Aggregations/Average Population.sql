-- Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT 
  ROUND(AVG(POPULATION), 0) as Avg_Population
FROM CITY;
