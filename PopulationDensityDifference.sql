-- Query the difference between the maximum and minimum populations in CITY.

SELECT abs(max(POPULATION) - min(POPULATION)) from CITY;