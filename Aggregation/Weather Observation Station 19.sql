'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-19/problem
Question      : Weather Observation Station 19
Difficulty    : Medium
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

--My Initial Approach:
WITH COORDINATES AS(
    SELECT MIN(LAT_N) AS a, MAX(LAT_N) AS b, MIN(LONG_W) AS c, MAX(LONG_W) AS d
    FROM STATION
)

SELECT ROUND(POWER(POWER((b-a), 2) + POWER((d-c), 2), 0.5), 4)
FROM COORDINATES;

--Time Complexity: O(n) {n is the number of rows in the table, POWER & ROUND - O(1)}
--Space Complexity: O(1)

--2nd Approach:
SELECT ROUND(
    SQRT(
        POWER(MAX(LAT_N) - MIN(LAT_N), 2) + 
        POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ), 4)
FROM STATION;
