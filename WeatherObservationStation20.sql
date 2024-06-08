-- A median is defined as a number separating the higher half of a data set from the lower half.
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

select round(lat_n,4) from station
where id =
     (select id
        FROM (SELECT id, ROW_NUMBER() OVER (ORDER BY LAT_N asc) AS row_num
               FROM STATION) AS RANKED
      where row_num = (select (count(lat_n) + 1)/ 2 from station));