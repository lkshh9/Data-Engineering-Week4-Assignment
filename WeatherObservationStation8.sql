-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first
-- and last characters. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';

-- ^[aeiou].*[aeiou]$: This pattern ensures the city name starts and ends with a vowel, allowing any
-- characters in between